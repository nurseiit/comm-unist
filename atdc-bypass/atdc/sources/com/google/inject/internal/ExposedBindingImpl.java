package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.ExposedBinding;
import com.google.inject.spi.PrivateElements;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class ExposedBindingImpl<T> extends BindingImpl<T> implements ExposedBinding<T> {
    private final PrivateElements privateElements;

    public ExposedBindingImpl(InjectorImpl injectorImpl, Object obj, Key<T> key, InternalFactory<T> internalFactory, PrivateElements privateElements) {
        super(injectorImpl, key, obj, internalFactory, Scoping.UNSCOPED);
        this.privateElements = privateElements;
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        return bindingTargetVisitor.visit((ExposedBinding) this);
    }

    public Set<Dependency<?>> getDependencies() {
        return ImmutableSet.of(Dependency.get(Key.get(Injector.class)));
    }

    public PrivateElements getPrivateElements() {
        return this.privateElements;
    }

    public String toString() {
        return Objects.toStringHelper(ExposedBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("privateElements", this.privateElements).toString();
    }

    public void applyTo(Binder binder) {
        throw new UnsupportedOperationException("This element represents a synthetic binding.");
    }
}
