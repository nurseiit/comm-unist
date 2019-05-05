package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.ProvisionException;
import com.google.inject.spi.DependencyAndSource;
import com.google.inject.spi.ProvisionListener;
import com.google.inject.spi.ProvisionListener.ProvisionInvocation;
import java.util.LinkedHashSet;
import java.util.List;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.Sets;

final class ProvisionListenerStackCallback<T> {
    private static final ProvisionListenerStackCallback<?> EMPTY_CALLBACK = new ProvisionListenerStackCallback(null, ImmutableList.of());
    private static final ProvisionListener[] EMPTY_LISTENER = new ProvisionListener[0];
    private final Binding<T> binding;
    private final ProvisionListener[] listeners;

    public interface ProvisionCallback<T> {
        T call() throws ErrorsException;
    }

    private class Provision extends ProvisionInvocation<T> {
        final ProvisionCallback<T> callable;
        final InternalContext context;
        ProvisionListener erredListener;
        final Errors errors;
        ErrorsException exceptionDuringProvision;
        int index = -1;
        T result;

        public Provision(Errors errors, InternalContext internalContext, ProvisionCallback<T> provisionCallback) {
            this.callable = provisionCallback;
            this.context = internalContext;
            this.errors = errors;
        }

        public T provision() {
            this.index++;
            if (this.index == ProvisionListenerStackCallback.this.listeners.length) {
                try {
                    this.result = this.callable.call();
                } catch (ErrorsException e) {
                    this.exceptionDuringProvision = e;
                    throw new ProvisionException(this.errors.merge(e.getErrors()).getMessages());
                }
            } else if (this.index < ProvisionListenerStackCallback.this.listeners.length) {
                int i = this.index;
                try {
                    ProvisionListenerStackCallback.this.listeners[this.index].onProvision(this);
                    if (i == this.index) {
                        provision();
                    }
                } catch (RuntimeException e2) {
                    this.erredListener = ProvisionListenerStackCallback.this.listeners[i];
                    throw e2;
                }
            } else {
                throw new IllegalStateException("Already provisioned in this listener.");
            }
            return this.result;
        }

        public Binding<T> getBinding() {
            return ProvisionListenerStackCallback.this.binding;
        }

        public List<DependencyAndSource> getDependencyChain() {
            return this.context.getDependencyChain();
        }
    }

    public static <T> ProvisionListenerStackCallback<T> emptyListener() {
        return EMPTY_CALLBACK;
    }

    public ProvisionListenerStackCallback(Binding<T> binding, List<ProvisionListener> list) {
        this.binding = binding;
        if (list.isEmpty()) {
            this.listeners = EMPTY_LISTENER;
            return;
        }
        LinkedHashSet newLinkedHashSet = Sets.newLinkedHashSet(list);
        this.listeners = (ProvisionListener[]) newLinkedHashSet.toArray(new ProvisionListener[newLinkedHashSet.size()]);
    }

    public boolean hasListeners() {
        return this.listeners.length > 0;
    }

    public T provision(Errors errors, InternalContext internalContext, ProvisionCallback<T> provisionCallback) throws ErrorsException {
        Throwable e;
        Provision provision = new Provision(errors, internalContext, provisionCallback);
        try {
            provision.provision();
            e = null;
        } catch (RuntimeException e2) {
            e = e2;
        }
        if (provision.exceptionDuringProvision != null) {
            throw provision.exceptionDuringProvision;
        } else if (e == null) {
            return provision.result;
        } else {
            Class cls = provision.erredListener != null ? provision.erredListener.getClass() : "(unknown)";
            throw errors.errorInUserCode(e, "Error notifying ProvisionListener %s of %s.%n Reason: %s", cls, this.binding.getKey(), e).toException();
        }
    }
}
