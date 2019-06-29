package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.UntargettedBinding;
import org.roboguice.shaded.goole.common.base.Objects;

final class UntargettedBindingImpl<T> extends BindingImpl<T> implements UntargettedBinding<T> {
    UntargettedBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj) {
        super(injectorImpl, key, obj, new InternalFactory<T>() {
            public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) {
                throw new AssertionError();
            }
        }, Scoping.UNSCOPED);
    }

    public UntargettedBindingImpl(Object obj, Key<T> key, Scoping scoping) {
        super(obj, key, scoping);
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        return bindingTargetVisitor.visit((UntargettedBinding) this);
    }

    public BindingImpl<T> withScoping(Scoping scoping) {
        return new UntargettedBindingImpl(getSource(), getKey(), scoping);
    }

    public BindingImpl<T> withKey(Key<T> key) {
        return new UntargettedBindingImpl(getSource(), (Key) key, getScoping());
    }

    public void applyTo(Binder binder) {
        getScoping().applyTo(binder.withSource(getSource()).bind(getKey()));
    }

    public String toString() {
        return Objects.toStringHelper(UntargettedBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof UntargettedBindingImpl)) {
            return false;
        }
        UntargettedBindingImpl untargettedBindingImpl = (UntargettedBindingImpl) obj;
        if (getKey().equals(untargettedBindingImpl.getKey()) && getScoping().equals(untargettedBindingImpl.getScoping())) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping());
    }
}
