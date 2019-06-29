package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.spi.BindingScopingVisitor;
import com.google.inject.spi.ElementVisitor;
import com.google.inject.spi.InstanceBinding;
import org.roboguice.shaded.goole.common.base.Objects;

public abstract class BindingImpl<T> implements Binding<T> {
    private final InjectorImpl injector;
    private final InternalFactory<? extends T> internalFactory;
    private final Key<T> key;
    private volatile Provider<T> provider;
    private final Scoping scoping;
    private final Object source;

    public BindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping) {
        this.injector = injectorImpl;
        this.key = key;
        this.source = obj;
        this.internalFactory = internalFactory;
        this.scoping = scoping;
    }

    protected BindingImpl(Object obj, Key<T> key, Scoping scoping) {
        this.internalFactory = null;
        this.injector = null;
        this.source = obj;
        this.key = key;
        this.scoping = scoping;
    }

    public Key<T> getKey() {
        return this.key;
    }

    public Object getSource() {
        return this.source;
    }

    public Provider<T> getProvider() {
        if (this.provider == null) {
            if (this.injector == null) {
                throw new UnsupportedOperationException("getProvider() not supported for module bindings");
            }
            this.provider = this.injector.getProvider(this.key);
        }
        return this.provider;
    }

    public InternalFactory<? extends T> getInternalFactory() {
        return this.internalFactory;
    }

    public Scoping getScoping() {
        return this.scoping;
    }

    public boolean isConstant() {
        return this instanceof InstanceBinding;
    }

    public <V> V acceptVisitor(ElementVisitor<V> elementVisitor) {
        return elementVisitor.visit((Binding) this);
    }

    public <V> V acceptScopingVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
        return this.scoping.acceptVisitor(bindingScopingVisitor);
    }

    /* Access modifiers changed, original: protected */
    public BindingImpl<T> withScoping(Scoping scoping) {
        throw new AssertionError();
    }

    /* Access modifiers changed, original: protected */
    public BindingImpl<T> withKey(Key<T> key) {
        throw new AssertionError();
    }

    public String toString() {
        return Objects.toStringHelper(Binding.class).add("key", this.key).add("scope", this.scoping).add(Param.SOURCE, this.source).toString();
    }

    public InjectorImpl getInjector() {
        return this.injector;
    }
}
