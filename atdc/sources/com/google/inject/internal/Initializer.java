package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.Stage;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.InjectionPoint;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Maps;

final class Initializer {
    private final Thread creatingThread = Thread.currentThread();
    private final Map<Object, InjectableReference<?>> pendingInjection = Maps.newIdentityHashMap();
    private final Map<Object, MembersInjectorImpl<?>> pendingMembersInjectors = Maps.newIdentityHashMap();
    private final CountDownLatch ready = new CountDownLatch(1);

    private class InjectableReference<T> implements Initializable<T> {
        private final InjectorImpl injector;
        private final T instance;
        private final Key<T> key;
        private final ProvisionListenerStackCallback<T> provisionCallback;
        private final Object source;

        public InjectableReference(InjectorImpl injectorImpl, T t, Key<T> key, ProvisionListenerStackCallback<T> provisionListenerStackCallback, Object obj) {
            this.injector = injectorImpl;
            this.key = key;
            this.provisionCallback = provisionListenerStackCallback;
            this.instance = Preconditions.checkNotNull(t, "instance");
            this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        }

        public MembersInjectorImpl<T> validate(Errors errors) throws ErrorsException {
            return this.injector.membersInjectorStore.get(TypeLiteral.get(this.instance.getClass()), errors.withSource(this.source));
        }

        public T get(Errors errors) throws ErrorsException {
            if (Initializer.this.ready.getCount() == 0) {
                return this.instance;
            }
            if (Thread.currentThread() != Initializer.this.creatingThread) {
                try {
                    Initializer.this.ready.await();
                    return this.instance;
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            if (Initializer.this.pendingInjection.remove(this.instance) != null) {
                MembersInjectorImpl membersInjectorImpl = (MembersInjectorImpl) Initializer.this.pendingMembersInjectors.remove(this.instance);
                Preconditions.checkState(membersInjectorImpl != null, "No membersInjector available for instance: %s, from key: %s", this.instance, this.key);
                membersInjectorImpl.injectAndNotify(this.instance, errors.withSource(this.source), this.key, this.provisionCallback, this.source, this.injector.options.stage == Stage.TOOL);
            }
            return this.instance;
        }

        public String toString() {
            return this.instance.toString();
        }
    }

    Initializer() {
    }

    /* Access modifiers changed, original: 0000 */
    public <T> Initializable<T> requestInjection(InjectorImpl injectorImpl, T t, Binding<T> binding, Object obj, Set<InjectionPoint> set) {
        ProvisionListenerStackCallback provisionListenerStackCallback;
        Preconditions.checkNotNull(obj);
        Key key = null;
        if (binding == null) {
            provisionListenerStackCallback = null;
        } else {
            provisionListenerStackCallback = injectorImpl.provisionListenerStore.get(binding);
        }
        if (t == null || (set.isEmpty() && !injectorImpl.membersInjectorStore.hasTypeListeners() && (provisionListenerStackCallback == null || !provisionListenerStackCallback.hasListeners()))) {
            return Initializables.of(t);
        }
        if (binding != null) {
            key = binding.getKey();
        }
        InjectableReference injectableReference = new InjectableReference(injectorImpl, t, key, provisionListenerStackCallback, obj);
        this.pendingInjection.put(t, injectableReference);
        return injectableReference;
    }

    /* Access modifiers changed, original: 0000 */
    public void validateOustandingInjections(Errors errors) {
        for (InjectableReference injectableReference : this.pendingInjection.values()) {
            try {
                this.pendingMembersInjectors.put(injectableReference.instance, injectableReference.validate(errors));
            } catch (ErrorsException e) {
                errors.merge(e.getErrors());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void injectAll(Errors errors) {
        Iterator it = Lists.newArrayList(this.pendingInjection.values()).iterator();
        while (it.hasNext()) {
            try {
                ((InjectableReference) it.next()).get(errors);
            } catch (ErrorsException e) {
                errors.merge(e.getErrors());
            }
        }
        if (this.pendingInjection.isEmpty()) {
            this.ready.countDown();
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to satisfy ");
        stringBuilder.append(this.pendingInjection);
        throw new AssertionError(stringBuilder.toString());
    }
}
