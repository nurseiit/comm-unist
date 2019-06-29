package com.google.inject.internal;

import com.google.inject.Binder;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.Key;
import com.google.inject.Module;
import com.google.inject.Provider;
import com.google.inject.Provides;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.Message;
import com.google.inject.util.Modules;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.HashMultimap;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;

public final class ProviderMethodsModule implements Module {
    private static final Key<Logger> LOGGER_KEY = Key.get(Logger.class);
    private final Object delegate;
    private HierarchyTraversalFilter filter = Guice.createHierarchyTraversalFilter();
    private final boolean skipFastClassGeneration;
    private final TypeLiteral<?> typeLiteral = TypeLiteral.get(this.delegate.getClass());

    private final class Signature {
        final int hashCode;
        final String name;
        final Class<?>[] parameters;

        Signature(Method method) {
            this.name = method.getName();
            List<TypeLiteral> parameterTypes = ProviderMethodsModule.this.typeLiteral.getParameterTypes(method);
            this.parameters = new Class[parameterTypes.size()];
            for (TypeLiteral rawType : parameterTypes) {
                this.parameters[0] = rawType.getRawType();
            }
            this.hashCode = this.name.hashCode() + (Arrays.hashCode(this.parameters) * 31);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof Signature)) {
                return false;
            }
            Signature signature = (Signature) obj;
            if (signature.name.equals(this.name) && Arrays.equals(this.parameters, signature.parameters)) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.hashCode;
        }
    }

    private static final class LogProvider implements Provider<Logger> {
        private final String name;

        public LogProvider(Method method) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(method.getDeclaringClass().getName());
            stringBuilder.append(".");
            stringBuilder.append(method.getName());
            this.name = stringBuilder.toString();
        }

        public Logger get() {
            return Logger.getLogger(this.name);
        }
    }

    private ProviderMethodsModule(Object obj, boolean z) {
        this.delegate = Preconditions.checkNotNull(obj, "delegate");
        this.skipFastClassGeneration = z;
    }

    public static Module forModule(Module module) {
        return forObject(module, false);
    }

    public static Module forObject(Object obj) {
        return forObject(obj, true);
    }

    private static Module forObject(Object obj, boolean z) {
        if (obj instanceof ProviderMethodsModule) {
            return Modules.EMPTY_MODULE;
        }
        return new ProviderMethodsModule(obj, z);
    }

    public synchronized void configure(Binder binder) {
        for (ProviderMethod configure : getProviderMethods(binder)) {
            configure.configure(binder);
        }
    }

    public List<ProviderMethod<?>> getProviderMethods(Binder binder) {
        ArrayList<ProviderMethod> newArrayList = Lists.newArrayList();
        HashMultimap create = HashMultimap.create();
        this.filter.reset();
        for (Class cls = this.delegate.getClass(); this.filter.isWorthScanningForMethods(Provides.class.getName(), cls); cls = cls.getSuperclass()) {
            for (Method method : this.filter.getAllMethods(Provides.class.getName(), cls)) {
                if (!((method.getModifiers() & 10) != 0 || method.isBridge() || method.isSynthetic())) {
                    create.put(new Signature(method), method);
                }
                if (isProvider(method)) {
                    newArrayList.add(createProviderMethod(binder, method));
                }
            }
        }
        for (ProviderMethod method2 : newArrayList) {
            Method method3 = method2.getMethod();
            for (Method method4 : create.get(new Signature(method3))) {
                if (!method4.getDeclaringClass().isAssignableFrom(method3.getDeclaringClass())) {
                    if (overrides(method4, method3)) {
                        binder.addError("Overriding @Provides methods is not allowed.\n\t@Provides method: %s\n\toverridden by: %s", method3, method4);
                        break;
                    }
                }
            }
        }
        return newArrayList;
    }

    private static boolean isProvider(Method method) {
        return (method.isBridge() || method.isSynthetic() || !method.isAnnotationPresent(Provides.class)) ? false : true;
    }

    private static boolean overrides(Method method, Method method2) {
        int modifiers = method2.getModifiers();
        if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
            return true;
        }
        if (Modifier.isPrivate(modifiers)) {
            return false;
        }
        return method.getDeclaringClass().getPackage().equals(method2.getDeclaringClass().getPackage());
    }

    private <T> ProviderMethod<T> createProviderMethod(Binder binder, Method method) {
        binder = binder.withSource(method);
        Errors errors = new Errors(method);
        Collection newArrayList = Lists.newArrayList();
        ArrayList newArrayList2 = Lists.newArrayList();
        List parameterTypes = this.typeLiteral.getParameterTypes(method);
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        for (int i = 0; i < parameterTypes.size(); i++) {
            Key key = getKey(errors, (TypeLiteral) parameterTypes.get(i), method, parameterAnnotations[i]);
            if (key.equals(LOGGER_KEY)) {
                key = Key.get(Logger.class, UniqueAnnotations.create());
                binder.bind(key).toProvider(new LogProvider(method));
            }
            newArrayList.add(Dependency.get(key));
            newArrayList2.add(binder.getProvider(key));
        }
        Key key2 = getKey(errors, this.typeLiteral.getReturnType(method), method, method.getAnnotations());
        Class findScopeAnnotation = Annotations.findScopeAnnotation(errors, method.getAnnotations());
        for (Message addError : errors.getMessages()) {
            binder.addError(addError);
        }
        return ProviderMethod.create(key2, method, this.delegate, ImmutableSet.copyOf(newArrayList), newArrayList2, findScopeAnnotation, this.skipFastClassGeneration);
    }

    /* Access modifiers changed, original: 0000 */
    public <T> Key<T> getKey(Errors errors, TypeLiteral<T> typeLiteral, Member member, Annotation[] annotationArr) {
        Annotation findBindingAnnotation = Annotations.findBindingAnnotation(errors, member, annotationArr);
        return findBindingAnnotation == null ? Key.get((TypeLiteral) typeLiteral) : Key.get((TypeLiteral) typeLiteral, findBindingAnnotation);
    }

    public boolean equals(Object obj) {
        return (obj instanceof ProviderMethodsModule) && ((ProviderMethodsModule) obj).delegate == this.delegate;
    }

    public int hashCode() {
        return this.delegate.hashCode();
    }
}
