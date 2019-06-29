package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.ProviderInstanceBinding;
import com.google.inject.spi.ProviderWithExtensionVisitor;
import com.google.inject.util.Providers;
import java.util.Collection;
import java.util.Set;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

final class ProviderInstanceBindingImpl<T> extends BindingImpl<T> implements ProviderInstanceBinding<T> {
    final ImmutableSet<InjectionPoint> injectionPoints;
    final Provider<? extends T> providerInstance;

    public ProviderInstanceBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Provider<? extends T> provider, Set<InjectionPoint> set) {
        super(injectorImpl, key, obj, internalFactory, scoping);
        this.providerInstance = provider;
        this.injectionPoints = ImmutableSet.copyOf((Collection) set);
    }

    public ProviderInstanceBindingImpl(Object obj, Key<T> key, Scoping scoping, Set<InjectionPoint> set, Provider<? extends T> provider) {
        super(obj, key, scoping);
        this.injectionPoints = ImmutableSet.copyOf((Collection) set);
        this.providerInstance = provider;
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        if (this.providerInstance instanceof ProviderWithExtensionVisitor) {
            return ((ProviderWithExtensionVisitor) this.providerInstance).acceptExtensionVisitor(bindingTargetVisitor, this);
        }
        return bindingTargetVisitor.visit((ProviderInstanceBinding) this);
    }

    public com.google.inject.Provider<? extends T> getProviderInstance() {
        return Providers.guicify(this.providerInstance);
    }

    public Provider<? extends T> getUserSuppliedProvider() {
        return this.providerInstance;
    }

    public Set<InjectionPoint> getInjectionPoints() {
        return this.injectionPoints;
    }

    public Set<Dependency<?>> getDependencies() {
        return this.providerInstance instanceof HasDependencies ? ImmutableSet.copyOf(((HasDependencies) this.providerInstance).getDependencies()) : Dependency.forInjectionPoints(this.injectionPoints);
    }

    public BindingImpl<T> withScoping(Scoping scoping) {
        return new ProviderInstanceBindingImpl(getSource(), getKey(), scoping, this.injectionPoints, this.providerInstance);
    }

    public BindingImpl<T> withKey(Key<T> key) {
        return new ProviderInstanceBindingImpl(getSource(), key, getScoping(), this.injectionPoints, this.providerInstance);
    }

    public void applyTo(Binder binder) {
        getScoping().applyTo(binder.withSource(getSource()).bind(getKey()).toProvider(getUserSuppliedProvider()));
    }

    public String toString() {
        return Objects.toStringHelper(ProviderInstanceBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("scope", getScoping()).add("provider", this.providerInstance).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof ProviderInstanceBindingImpl)) {
            return false;
        }
        ProviderInstanceBindingImpl providerInstanceBindingImpl = (ProviderInstanceBindingImpl) obj;
        if (getKey().equals(providerInstanceBindingImpl.getKey()) && getScoping().equals(providerInstanceBindingImpl.getScoping()) && Objects.equal(this.providerInstance, providerInstanceBindingImpl.providerInstance)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping());
    }
}
