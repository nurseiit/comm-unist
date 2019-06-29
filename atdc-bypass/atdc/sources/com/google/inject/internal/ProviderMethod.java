package com.google.inject.internal;

import com.google.inject.Binder;
import com.google.inject.Exposed;
import com.google.inject.Key;
import com.google.inject.PrivateBinder;
import com.google.inject.Provider;
import com.google.inject.internal.util.StackTraceElements;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.ProviderInstanceBinding;
import com.google.inject.spi.ProviderWithExtensionVisitor;
import com.google.inject.spi.ProvidesMethodBinding;
import com.google.inject.spi.ProvidesMethodTargetVisitor;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public abstract class ProviderMethod<T> implements ProviderWithExtensionVisitor<T>, HasDependencies, ProvidesMethodBinding<T> {
    private final ImmutableSet<Dependency<?>> dependencies;
    private final boolean exposed;
    protected final Object instance;
    private final Key<T> key;
    protected final Method method;
    private final List<Provider<?>> parameterProviders;
    private final Class<? extends Annotation> scopeAnnotation;

    private static final class ReflectionProviderMethod<T> extends ProviderMethod<T> {
        ReflectionProviderMethod(Key<T> key, Method method, Object obj, ImmutableSet<Dependency<?>> immutableSet, List<Provider<?>> list, Class<? extends Annotation> cls) {
            super(key, method, obj, immutableSet, list, cls);
        }

        /* Access modifiers changed, original: 0000 */
        public Object doProvision(Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            return this.method.invoke(this.instance, objArr);
        }
    }

    public abstract Object doProvision(Object[] objArr) throws IllegalAccessException, InvocationTargetException;

    static <T> ProviderMethod<T> create(Key<T> key, Method method, Object obj, ImmutableSet<Dependency<?>> immutableSet, List<Provider<?>> list, Class<? extends Annotation> cls, boolean z) {
        if (!(Modifier.isPublic(method.getModifiers()) && Modifier.isPublic(method.getDeclaringClass().getModifiers()))) {
            method.setAccessible(true);
        }
        return new ReflectionProviderMethod(key, method, obj, immutableSet, list, cls);
    }

    private ProviderMethod(Key<T> key, Method method, Object obj, ImmutableSet<Dependency<?>> immutableSet, List<Provider<?>> list, Class<? extends Annotation> cls) {
        this.key = key;
        this.scopeAnnotation = cls;
        this.instance = obj;
        this.dependencies = immutableSet;
        this.method = method;
        this.parameterProviders = list;
        this.exposed = method.isAnnotationPresent(Exposed.class);
    }

    public Key<T> getKey() {
        return this.key;
    }

    public Method getMethod() {
        return this.method;
    }

    public Object getInstance() {
        return this.instance;
    }

    public Object getEnclosingInstance() {
        return this.instance;
    }

    public void configure(Binder binder) {
        binder = binder.withSource(this.method);
        if (this.scopeAnnotation != null) {
            binder.bind(this.key).toProvider((Provider) this).in(this.scopeAnnotation);
        } else {
            binder.bind(this.key).toProvider((Provider) this);
        }
        if (this.exposed) {
            ((PrivateBinder) binder).expose(this.key);
        }
    }

    public T get() {
        Object[] objArr = new Object[this.parameterProviders.size()];
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = ((Provider) this.parameterProviders.get(i)).get();
        }
        try {
            return doProvision(objArr);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            throw Exceptions.rethrowCause(e2);
        }
    }

    public Set<Dependency<?>> getDependencies() {
        return this.dependencies;
    }

    public <B, V> V acceptExtensionVisitor(BindingTargetVisitor<B, V> bindingTargetVisitor, ProviderInstanceBinding<? extends B> providerInstanceBinding) {
        if (bindingTargetVisitor instanceof ProvidesMethodTargetVisitor) {
            return ((ProvidesMethodTargetVisitor) bindingTargetVisitor).visit(this);
        }
        return bindingTargetVisitor.visit((ProviderInstanceBinding) providerInstanceBinding);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("@Provides ");
        stringBuilder.append(StackTraceElements.forMember(this.method));
        return stringBuilder.toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof ProviderMethod)) {
            return false;
        }
        ProviderMethod providerMethod = (ProviderMethod) obj;
        if (this.method.equals(providerMethod.method) && this.instance.equals(providerMethod.instance)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(this.method);
    }
}
