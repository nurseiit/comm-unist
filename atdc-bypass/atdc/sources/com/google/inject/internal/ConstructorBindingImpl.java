package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.ConfigurationException;
import com.google.inject.Inject;
import com.google.inject.Key;
import com.google.inject.internal.util.Classes;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.ConstructorBinding;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.InjectionPoint;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.ImmutableSet.Builder;

final class ConstructorBindingImpl<T> extends BindingImpl<T> implements ConstructorBinding<T>, DelayedInitialize {
    private final InjectionPoint constructorInjectionPoint;
    private final Factory<T> factory;

    private static class Factory<T> implements InternalFactory<T> {
        private boolean allowCircularProxy;
        private ConstructorInjector<T> constructorInjector;
        private final boolean failIfNotLinked;
        private final Key<?> key;
        private ProvisionListenerStackCallback<T> provisionCallback;

        Factory(boolean z, Key<?> key) {
            this.failIfNotLinked = z;
            this.key = key;
        }

        public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
            Preconditions.checkState(this.constructorInjector != null, "Constructor not ready");
            if (!this.failIfNotLinked || z) {
                return this.constructorInjector.construct(errors, internalContext, dependency.getKey().getTypeLiteral().getRawType(), this.allowCircularProxy, this.provisionCallback);
            }
            throw errors.jitDisabled(this.key).toException();
        }
    }

    private ConstructorBindingImpl(InjectorImpl injectorImpl, Key<T> key, Object obj, InternalFactory<? extends T> internalFactory, Scoping scoping, Factory<T> factory, InjectionPoint injectionPoint) {
        super(injectorImpl, key, obj, internalFactory, scoping);
        this.factory = factory;
        this.constructorInjectionPoint = injectionPoint;
    }

    public ConstructorBindingImpl(Key<T> key, Object obj, Scoping scoping, InjectionPoint injectionPoint, Set<InjectionPoint> set) {
        super(obj, key, scoping);
        this.factory = new Factory(false, key);
        ConstructionProxy create = new DefaultConstructionProxyFactory(injectionPoint).create();
        this.constructorInjectionPoint = injectionPoint;
        this.factory.constructorInjector = new ConstructorInjector(set, create, null, null);
    }

    static <T> ConstructorBindingImpl<T> create(InjectorImpl injectorImpl, Key<T> key, InjectionPoint injectionPoint, Object obj, Scoping scoping, Errors errors, boolean z, boolean z2) throws ErrorsException {
        int size = errors.size();
        Class rawType = (injectionPoint == null ? key.getTypeLiteral() : injectionPoint.getDeclaringType()).getRawType();
        if (Modifier.isAbstract(rawType.getModifiers())) {
            errors.missingImplementation(key);
        }
        if (Classes.isInnerClass(rawType)) {
            errors.cannotInjectInnerClass(rawType);
        }
        errors.throwIfNewErrors(size);
        if (injectionPoint == null) {
            try {
                injectionPoint = InjectionPoint.forConstructorOf(key.getTypeLiteral());
                if (z2 && !hasAtInject((Constructor) injectionPoint.getMember())) {
                    errors.atInjectRequired(rawType);
                }
            } catch (ConfigurationException e) {
                throw errors.merge(e.getErrorMessages()).toException();
            }
        }
        InjectionPoint injectionPoint2 = injectionPoint;
        if (!scoping.isExplicitlyScoped()) {
            Class findScopeAnnotation = Annotations.findScopeAnnotation(errors, injectionPoint2.getMember().getDeclaringClass());
            if (findScopeAnnotation != null) {
                scoping = Scoping.makeInjectable(Scoping.forAnnotation(findScopeAnnotation), injectorImpl, errors.withSource(rawType));
            }
        }
        Scoping scoping2 = scoping;
        errors.throwIfNewErrors(size);
        Factory factory = new Factory(z, key);
        return new ConstructorBindingImpl(injectorImpl, key, obj, Scoping.scope(key, injectorImpl, factory, obj, scoping2), scoping2, factory, injectionPoint2);
    }

    private static boolean hasAtInject(Constructor constructor) {
        return constructor.isAnnotationPresent(Inject.class) || constructor.isAnnotationPresent(javax.inject.Inject.class);
    }

    public void initialize(InjectorImpl injectorImpl, Errors errors) throws ErrorsException {
        this.factory.allowCircularProxy = injectorImpl.options.disableCircularProxies ^ 1;
        this.factory.constructorInjector = injectorImpl.constructors.get(this.constructorInjectionPoint, errors);
        this.factory.provisionCallback = injectorImpl.provisionListenerStore.get(this);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isInitialized() {
        return this.factory.constructorInjector != null;
    }

    /* Access modifiers changed, original: 0000 */
    public InjectionPoint getInternalConstructor() {
        if (this.factory.constructorInjector != null) {
            return this.factory.constructorInjector.getConstructionProxy().getInjectionPoint();
        }
        return this.constructorInjectionPoint;
    }

    /* Access modifiers changed, original: 0000 */
    public Set<Dependency<?>> getInternalDependencies() {
        Builder builder = ImmutableSet.builder();
        if (this.factory.constructorInjector == null) {
            builder.add(this.constructorInjectionPoint);
            try {
                builder.addAll(InjectionPoint.forInstanceMethodsAndFields(this.constructorInjectionPoint.getDeclaringType()));
            } catch (ConfigurationException unused) {
            }
        } else {
            builder.add(getConstructor()).addAll(getInjectableMembers());
        }
        return Dependency.forInjectionPoints(builder.build());
    }

    public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
        Preconditions.checkState(this.factory.constructorInjector != null, "not initialized");
        return bindingTargetVisitor.visit((ConstructorBinding) this);
    }

    public InjectionPoint getConstructor() {
        Preconditions.checkState(this.factory.constructorInjector != null, "Binding is not ready");
        return this.factory.constructorInjector.getConstructionProxy().getInjectionPoint();
    }

    public Set<InjectionPoint> getInjectableMembers() {
        Preconditions.checkState(this.factory.constructorInjector != null, "Binding is not ready");
        return this.factory.constructorInjector.getInjectableMembers();
    }

    public Set<Dependency<?>> getDependencies() {
        return Dependency.forInjectionPoints(new Builder().add(getConstructor()).addAll(getInjectableMembers()).build());
    }

    /* Access modifiers changed, original: protected */
    public BindingImpl<T> withScoping(Scoping scoping) {
        return new ConstructorBindingImpl(null, getKey(), getSource(), this.factory, scoping, this.factory, this.constructorInjectionPoint);
    }

    /* Access modifiers changed, original: protected */
    public BindingImpl<T> withKey(Key<T> key) {
        return new ConstructorBindingImpl(null, key, getSource(), this.factory, getScoping(), this.factory, this.constructorInjectionPoint);
    }

    public void applyTo(Binder binder) {
        getScoping().applyTo(binder.withSource(getSource()).bind(getKey()).toConstructor((Constructor) getConstructor().getMember(), getConstructor().getDeclaringType()));
    }

    public String toString() {
        return Objects.toStringHelper(ConstructorBinding.class).add("key", getKey()).add(Param.SOURCE, getSource()).add("scope", getScoping()).toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof ConstructorBindingImpl)) {
            return false;
        }
        ConstructorBindingImpl constructorBindingImpl = (ConstructorBindingImpl) obj;
        if (getKey().equals(constructorBindingImpl.getKey()) && getScoping().equals(constructorBindingImpl.getScoping()) && Objects.equal(this.constructorInjectionPoint, constructorBindingImpl.constructorInjectionPoint)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getKey(), getScoping(), this.constructorInjectionPoint);
    }
}
