package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.ProviderKeyBinding;
import java.util.Set;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

final class LinkedProviderBindingImpl<T> extends BindingImpl<T> implements ProviderKeyBinding<T>, HasDependencies, DelayedInitialize {
    final DelayedInitialize delayedInitializer;
    final Key<? extends Provider<? extends T>> providerKey;

    private LinkedProviderBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Key<? extends Provider<? extends T>> key2, DelayedInitialize delayedInitialize) {
        super(injectorImpl, key, obj, internalFactory, scoping);
        this.providerKey = key2;
        this.delayedInitializer = delayedInitialize;
    }

    public LinkedProviderBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Key<? extends Provider<? extends T>> key2) {
        this(injectorImpl, key, obj, internalFactory, scoping, key2, null);
    }

    LinkedProviderBindingImpl(Object obj, Key<T> key, Scoping scoping, Key<? extends Provider<? extends T>> key2) {
        super(obj, key, scoping);
        this.providerKey = key2;
        this.delayedInitializer = null;
    }

    static <T> LinkedProviderBindingImpl<T> createWithInitializer(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Key<? extends Provider<? extends T>> key2, DelayedInitialize delayedInitialize) {
        return new LinkedProviderBindingImpl(injectorImpl, key, obj, internalFactory, scoping, key2, delayedInitialize);
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        return bindingTargetVisitor.visit((ProviderKeyBinding) this);
    }

    public Key<? extends Provider<? extends T>> getProviderKey() {
        return this.providerKey;
    }

    public void initialize(InjectorImpl injectorImpl, Errors errors) throws ErrorsException {
        if (this.delayedInitializer != null) {
            this.delayedInitializer.initialize(injectorImpl, errors);
        }
    }

    public Set<Dependency<?>> getDependencies() {
        return ImmutableSet.of(Dependency.get(this.providerKey));
    }

    public BindingImpl<T> withScoping(Scoping scoping) {
        return new LinkedProviderBindingImpl(getSource(), getKey(), scoping, this.providerKey);
    }

    public BindingImpl<T> withKey(Key<T> key) {
        return new LinkedProviderBindingImpl(getSource(), key, getScoping(), this.providerKey);
    }

    public void applyTo(Binder binder) {
        getScoping().applyTo(binder.withSource(getSource()).bind(getKey()).toProvider(getProviderKey()));
    }

    public String toString() {
        return Objects.toStringHelper(ProviderKeyBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("scope", getScoping()).add("provider", this.providerKey).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof LinkedProviderBindingImpl)) {
            return false;
        }
        LinkedProviderBindingImpl linkedProviderBindingImpl = (LinkedProviderBindingImpl) obj;
        if (getKey().equals(linkedProviderBindingImpl.getKey()) && getScoping().equals(linkedProviderBindingImpl.getScoping()) && Objects.equal(this.providerKey, linkedProviderBindingImpl.providerKey)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping(), this.providerKey);
    }
}
