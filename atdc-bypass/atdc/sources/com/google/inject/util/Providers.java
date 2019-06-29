package com.google.inject.util;

import com.google.inject.Inject;
import com.google.inject.Injector;
import com.google.inject.Provider;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.ProviderWithDependencies;
import java.util.Collection;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Sets;

public final class Providers {

    private static final class ConstantProvider<T> implements Provider<T> {
        private final T instance;

        private ConstantProvider(T t) {
            this.instance = t;
        }

        public T get() {
            return this.instance;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("of(");
            stringBuilder.append(this.instance);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ConstantProvider) && Objects.equal(this.instance, ((ConstantProvider) obj).instance);
        }

        public int hashCode() {
            return Objects.hashCode(this.instance);
        }
    }

    private static class GuicifiedProvider<T> implements Provider<T> {
        protected final javax.inject.Provider<T> delegate;

        private GuicifiedProvider(javax.inject.Provider<T> provider) {
            this.delegate = provider;
        }

        public T get() {
            return this.delegate.get();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("guicified(");
            stringBuilder.append(this.delegate);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public boolean equals(Object obj) {
            return (obj instanceof GuicifiedProvider) && Objects.equal(this.delegate, ((GuicifiedProvider) obj).delegate);
        }

        public int hashCode() {
            return Objects.hashCode(this.delegate);
        }
    }

    private static final class GuicifiedProviderWithDependencies<T> extends GuicifiedProvider<T> implements ProviderWithDependencies<T> {
        private final Set<Dependency<?>> dependencies;

        private GuicifiedProviderWithDependencies(Set<Dependency<?>> set, javax.inject.Provider<T> provider) {
            super(provider);
            this.dependencies = set;
        }

        /* Access modifiers changed, original: 0000 */
        @Inject
        public void initialize(Injector injector) {
            injector.injectMembers(this.delegate);
        }

        public Set<Dependency<?>> getDependencies() {
            return this.dependencies;
        }
    }

    private Providers() {
    }

    public static <T> Provider<T> of(T t) {
        return new ConstantProvider(t);
    }

    public static <T> Provider<T> guicify(javax.inject.Provider<T> provider) {
        if (provider instanceof Provider) {
            return (Provider) provider;
        }
        javax.inject.Provider provider2 = (javax.inject.Provider) Preconditions.checkNotNull(provider, "provider");
        Set<InjectionPoint> forInstanceMethodsAndFields = InjectionPoint.forInstanceMethodsAndFields(provider.getClass());
        if (forInstanceMethodsAndFields.isEmpty()) {
            return new GuicifiedProvider(provider2);
        }
        Collection newHashSet = Sets.newHashSet();
        for (InjectionPoint dependencies : forInstanceMethodsAndFields) {
            newHashSet.addAll(dependencies.getDependencies());
        }
        return new GuicifiedProviderWithDependencies(ImmutableSet.copyOf(newHashSet), provider2);
    }
}
