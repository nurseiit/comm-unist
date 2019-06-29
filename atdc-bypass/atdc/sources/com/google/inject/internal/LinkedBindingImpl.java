package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.LinkedKeyBinding;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class LinkedBindingImpl<T> extends BindingImpl<T> implements LinkedKeyBinding<T>, HasDependencies {
    final Key<? extends T> targetKey;

    public LinkedBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Key<? extends T> key2) {
        super(injectorImpl, key, obj, internalFactory, scoping);
        this.targetKey = key2;
    }

    public LinkedBindingImpl(Object obj, Key<T> key, Scoping scoping, Key<? extends T> key2) {
        super(obj, key, scoping);
        this.targetKey = key2;
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        return bindingTargetVisitor.visit((LinkedKeyBinding) this);
    }

    public Key<? extends T> getLinkedKey() {
        return this.targetKey;
    }

    public Set<Dependency<?>> getDependencies() {
        return ImmutableSet.of(Dependency.get(this.targetKey));
    }

    public BindingImpl<T> withScoping(Scoping scoping) {
        return new LinkedBindingImpl(getSource(), getKey(), scoping, this.targetKey);
    }

    public BindingImpl<T> withKey(Key<T> key) {
        return new LinkedBindingImpl(getSource(), key, getScoping(), this.targetKey);
    }

    public void applyTo(Binder binder) {
        getScoping().applyTo(binder.withSource(getSource()).bind(getKey()).to(getLinkedKey()));
    }

    public String toString() {
        return Objects.toStringHelper(LinkedKeyBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("scope", getScoping()).add("target", this.targetKey).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof LinkedBindingImpl)) {
            return false;
        }
        LinkedBindingImpl linkedBindingImpl = (LinkedBindingImpl) obj;
        if (getKey().equals(linkedBindingImpl.getKey()) && getScoping().equals(linkedBindingImpl.getScoping()) && Objects.equal(this.targetKey, linkedBindingImpl.targetKey)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping(), this.targetKey);
    }
}
