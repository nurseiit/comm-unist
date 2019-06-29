package com.google.inject.internal;

import android.support.v4.media.TransportMediator;
import com.google.inject.BindingAnnotation;
import com.google.inject.Key;
import com.google.inject.ScopeAnnotation;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.util.Classes;
import com.google.inject.name.Names;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import javax.inject.Named;
import javax.inject.Qualifier;
import javax.inject.Scope;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Joiner;
import org.roboguice.shaded.goole.common.base.Joiner.MapJoiner;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.cache.CacheBuilder;
import org.roboguice.shaded.goole.common.cache.CacheLoader;
import org.roboguice.shaded.goole.common.cache.LoadingCache;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;
import org.roboguice.shaded.goole.common.collect.ImmutableMap.Builder;
import org.roboguice.shaded.goole.common.collect.Maps;

public class Annotations {
    private static final Function<Object, String> DEEP_TO_STRING_FN = new Function<Object, String>() {
        public String apply(Object obj) {
            String deepToString = Arrays.deepToString(new Object[]{obj});
            return deepToString.substring(1, deepToString.length() - 1);
        }
    };
    private static final MapJoiner JOINER = Joiner.on(", ").withKeyValueSeparator("=");
    private static final AnnotationChecker bindingAnnotationChecker = new AnnotationChecker(Arrays.asList(new Class[]{BindingAnnotation.class, Qualifier.class}));
    private static final LoadingCache<Class<? extends Annotation>, Annotation> cache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<? extends Annotation>, Annotation>() {
        public Annotation load(Class<? extends Annotation> cls) {
            return Annotations.generateAnnotationImpl(cls);
        }
    });
    private static final AnnotationChecker scopeChecker = new AnnotationChecker(Arrays.asList(new Class[]{ScopeAnnotation.class, Scope.class}));

    static class AnnotationChecker {
        private final Collection<Class<? extends Annotation>> annotationTypes;
        final LoadingCache<Class<? extends Annotation>, Boolean> cache = CacheBuilder.newBuilder().weakKeys().build(this.hasAnnotations);
        private CacheLoader<Class<? extends Annotation>, Boolean> hasAnnotations = new CacheLoader<Class<? extends Annotation>, Boolean>() {
            public Boolean load(Class<? extends Annotation> cls) {
                for (Annotation annotationType : cls.getAnnotations()) {
                    if (AnnotationChecker.this.annotationTypes.contains(annotationType.annotationType())) {
                        return Boolean.valueOf(true);
                    }
                }
                return Boolean.valueOf(false);
            }
        };

        AnnotationChecker(Collection<Class<? extends Annotation>> collection) {
            this.annotationTypes = collection;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean hasAnnotations(Class<? extends Annotation> cls) {
            return ((Boolean) this.cache.getUnchecked(cls)).booleanValue();
        }
    }

    public static boolean isMarker(Class<? extends Annotation> cls) {
        return cls.getDeclaredMethods().length == 0;
    }

    public static boolean isAllDefaultMethods(Class<? extends Annotation> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            if (declaredMethods[i].getDefaultValue() == null) {
                return false;
            }
            i++;
            z = true;
        }
        return z;
    }

    public static <T extends Annotation> T generateAnnotation(Class<T> cls) {
        Preconditions.checkState(isAllDefaultMethods(cls), "%s is not all default methods", cls);
        return (Annotation) cache.getUnchecked(cls);
    }

    private static <T extends Annotation> T generateAnnotationImpl(final Class<T> cls) {
        final ImmutableMap resolveMembers = resolveMembers(cls);
        return (Annotation) cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() {
            public Object invoke(Object obj, Method method, Object[] objArr) throws Exception {
                String name = method.getName();
                if (name.equals("annotationType")) {
                    return cls;
                }
                if (name.equals("toString")) {
                    return Annotations.annotationToString(cls, resolveMembers);
                }
                if (name.equals("hashCode")) {
                    return Integer.valueOf(Annotations.annotationHashCode(cls, resolveMembers));
                }
                if (name.equals("equals")) {
                    return Boolean.valueOf(Annotations.annotationEquals(cls, resolveMembers, objArr[0]));
                }
                return resolveMembers.get(name);
            }
        }));
    }

    private static ImmutableMap<String, Object> resolveMembers(Class<? extends Annotation> cls) {
        Builder builder = ImmutableMap.builder();
        for (Method method : cls.getDeclaredMethods()) {
            builder.put(method.getName(), method.getDefaultValue());
        }
        return builder.build();
    }

    private static boolean annotationEquals(Class<? extends Annotation> cls, Map<String, Object> map, Object obj) throws Exception {
        if (!cls.isInstance(obj)) {
            return false;
        }
        for (Method name : cls.getDeclaredMethods()) {
            String name2 = name.getName();
            if (!Arrays.deepEquals(new Object[]{r8[r2].invoke(obj, new Object[0])}, new Object[]{map.get(name2)})) {
                return false;
            }
        }
        return true;
    }

    private static int annotationHashCode(Class<? extends Annotation> cls, Map<String, Object> map) throws Exception {
        int i = 0;
        for (Method name : cls.getDeclaredMethods()) {
            String name2 = name.getName();
            Object obj = map.get(name2);
            i += (name2.hashCode() * TransportMediator.KEYCODE_MEDIA_PAUSE) ^ (Arrays.deepHashCode(new Object[]{obj}) - 31);
        }
        return i;
    }

    private static String annotationToString(Class<? extends Annotation> cls, Map<String, Object> map) throws Exception {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("@");
        stringBuilder.append(cls.getName());
        stringBuilder.append("(");
        JOINER.appendTo(stringBuilder, Maps.transformValues((Map) map, DEEP_TO_STRING_FN));
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public static boolean isRetainedAtRuntime(Class<? extends Annotation> cls) {
        Retention retention = (Retention) cls.getAnnotation(Retention.class);
        return retention != null && retention.value() == RetentionPolicy.RUNTIME;
    }

    public static Class<? extends Annotation> findScopeAnnotation(Errors errors, Class<?> cls) {
        return findScopeAnnotation(errors, cls.getAnnotations());
    }

    public static Class<? extends Annotation> findScopeAnnotation(Errors errors, Annotation[] annotationArr) {
        Class cls = null;
        for (Annotation annotationType : annotationArr) {
            Class annotationType2 = annotationType.annotationType();
            if (isScopeAnnotation(annotationType2)) {
                if (cls != null) {
                    errors.duplicateScopeAnnotations(cls, annotationType2);
                } else {
                    cls = annotationType2;
                }
            }
        }
        return cls;
    }

    public static boolean isScopeAnnotation(Class<? extends Annotation> cls) {
        return scopeChecker.hasAnnotations(cls);
    }

    public static void checkForMisplacedScopeAnnotations(Class<?> cls, Object obj, Errors errors) {
        if (!Classes.isConcrete(cls)) {
            Class findScopeAnnotation = findScopeAnnotation(errors, (Class) cls);
            if (findScopeAnnotation != null) {
                errors.withSource(cls).scopeAnnotationOnAbstractType(findScopeAnnotation, cls, obj);
            }
        }
    }

    public static Key<?> getKey(TypeLiteral<?> typeLiteral, Member member, Annotation[] annotationArr, Errors errors) throws ErrorsException {
        int size = errors.size();
        Annotation findBindingAnnotation = findBindingAnnotation(errors, member, annotationArr);
        errors.throwIfNewErrors(size);
        return findBindingAnnotation == null ? Key.get((TypeLiteral) typeLiteral) : Key.get((TypeLiteral) typeLiteral, findBindingAnnotation);
    }

    public static Annotation findBindingAnnotation(Errors errors, Member member, Annotation[] annotationArr) {
        Annotation annotation = null;
        for (Annotation annotation2 : annotationArr) {
            Class annotationType = annotation2.annotationType();
            if (isBindingAnnotation(annotationType)) {
                if (annotation != null) {
                    errors.duplicateBindingAnnotations(member, annotation.annotationType(), annotationType);
                } else {
                    annotation = annotation2;
                }
            }
        }
        return annotation;
    }

    public static boolean isBindingAnnotation(Class<? extends Annotation> cls) {
        return bindingAnnotationChecker.hasAnnotations(cls);
    }

    public static Annotation canonicalizeIfNamed(Annotation annotation) {
        return annotation instanceof Named ? Names.named(((Named) annotation).value()) : annotation;
    }

    public static Class<? extends Annotation> canonicalizeIfNamed(Class<? extends Annotation> cls) {
        return cls == Named.class ? com.google.inject.name.Named.class : cls;
    }
}
