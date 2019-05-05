package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.InstanceBinding;
import com.google.inject.util.Providers;
import java.util.Collection;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

final class InstanceBindingImpl<T> extends BindingImpl<T> implements InstanceBinding<T> {
    final ImmutableSet<InjectionPoint> injectionPoints;
    final T instance;
    final Provider<T> provider;

    public InstanceBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Set<InjectionPoint> set, T t) {
        super(injectorImpl, key, obj, internalFactory, Scoping.EAGER_SINGLETON);
        this.injectionPoints = ImmutableSet.copyOf((Collection) set);
        this.instance = t;
        this.provider = Providers.of(t);
    }

    public InstanceBindingImpl(Object obj, Key<T> key, Scoping scoping, Set<InjectionPoint> set, T t) {
        super(obj, key, scoping);
        this.injectionPoints = ImmutableSet.copyOf((Collection) set);
        this.instance = t;
        this.provider = Providers.of(t);
    }

    public Provider<T> getProvider() {
        return this.provider;
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        return bindingTargetVisitor.visit((InstanceBinding) this);
    }

    public T getInstance() {
        return this.instance;
    }

    public Set<InjectionPoint> getInjectionPoints() {
        return this.injectionPoints;
    }

    public Set<Dependency<?>> getDependencies() {
        return this.instance instanceof HasDependencies ? ImmutableSet.copyOf(((HasDependencies) this.instance).getDependencies()) : Dependency.forInjectionPoints(this.injectionPoints);
    }

    public BindingImpl<T> withScoping(Scoping scoping) {
        return new InstanceBindingImpl(getSource(), getKey(), scoping, this.injectionPoints, this.instance);
    }

    public BindingImpl<T> withKey(Key<T> key) {
        return new InstanceBindingImpl(getSource(), key, getScoping(), this.injectionPoints, this.instance);
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).bind(getKey()).toInstance(this.instance);
    }

    public String toString() {
        return Objects.toStringHelper(InstanceBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("instance", this.instance).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof InstanceBindingImpl)) {
            return false;
        }
        InstanceBindingImpl instanceBindingImpl = (InstanceBindingImpl) obj;
        if (getKey().equals(instanceBindingImpl.getKey()) && getScoping().equals(instanceBindingImpl.getScoping()) && Objects.equal(this.instance, instanceBindingImpl.instance)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping());
    }
}
