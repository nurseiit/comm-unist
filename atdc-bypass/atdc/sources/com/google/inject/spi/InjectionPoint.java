package com.google.inject.spi;

import com.google.inject.ConfigurationException;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.Key;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.Annotations;
import com.google.inject.internal.Errors;
import com.google.inject.internal.ErrorsException;
import com.google.inject.internal.MoreTypes;
import com.google.inject.internal.Nullability;
import com.google.inject.internal.util.Classes;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.ImmutableSet.Builder;
import org.roboguice.shaded.goole.common.collect.Lists;

public final class InjectionPoint {
    private static HierarchyTraversalFilter filter = Guice.createHierarchyTraversalFilter();
    private static final Logger logger = Logger.getLogger(InjectionPoint.class.getName());
    private final TypeLiteral<?> declaringType;
    private final ImmutableList<Dependency<?>> dependencies;
    private final Member member;
    private final boolean optional;

    static abstract class InjectableMember {
        final TypeLiteral<?> declaringType;
        final boolean jsr330;
        InjectableMember next;
        final boolean optional;
        InjectableMember previous;

        public abstract InjectionPoint toInjectionPoint();

        InjectableMember(TypeLiteral<?> typeLiteral, Annotation annotation) {
            this.declaringType = typeLiteral;
            if (annotation.annotationType() == Inject.class) {
                this.optional = false;
                this.jsr330 = true;
                return;
            }
            this.jsr330 = false;
            this.optional = ((com.google.inject.Inject) annotation).optional();
        }
    }

    static class InjectableMembers {
        InjectableMember head;
        InjectableMember tail;

        InjectableMembers() {
        }

        /* Access modifiers changed, original: 0000 */
        public void add(InjectableMember injectableMember) {
            if (this.head == null) {
                this.tail = injectableMember;
                this.head = injectableMember;
                return;
            }
            injectableMember.previous = this.tail;
            this.tail.next = injectableMember;
            this.tail = injectableMember;
        }

        /* Access modifiers changed, original: 0000 */
        public void addAll(InjectableMembers injectableMembers) {
            for (InjectableMember injectableMember = injectableMembers.head; injectableMember != null; injectableMember = injectableMember.next) {
                add(injectableMember);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void remove(InjectableMember injectableMember) {
            if (injectableMember.previous != null) {
                injectableMember.previous.next = injectableMember.next;
            }
            if (injectableMember.next != null) {
                injectableMember.next.previous = injectableMember.previous;
            }
            if (this.head == injectableMember) {
                this.head = injectableMember.next;
            }
            if (this.tail == injectableMember) {
                this.tail = injectableMember.previous;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isEmpty() {
            return this.head == null;
        }
    }

    static class OverrideIndex {
        Map<Signature, List<InjectableMethod>> bySignature;
        final InjectableMembers injectableMembers;
        Method lastMethod;
        Signature lastSignature;
        Position position = Position.TOP;

        OverrideIndex(InjectableMembers injectableMembers) {
            this.injectableMembers = injectableMembers;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean removeIfOverriddenBy(Method method, boolean z, InjectableMethod injectableMethod) {
            if (this.position == Position.TOP) {
                return false;
            }
            boolean z2;
            if (this.bySignature == null) {
                this.bySignature = new HashMap();
                for (InjectableMember injectableMember = this.injectableMembers.head; injectableMember != null; injectableMember = injectableMember.next) {
                    if (injectableMember instanceof InjectableMethod) {
                        InjectableMethod injectableMethod2 = (InjectableMethod) injectableMember;
                        if (!injectableMethod2.isFinal()) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(injectableMethod2);
                            this.bySignature.put(new Signature(injectableMethod2.method), arrayList);
                        }
                    }
                }
            }
            this.lastMethod = method;
            Signature signature = new Signature(method);
            this.lastSignature = signature;
            List list = (List) this.bySignature.get(signature);
            if (list != null) {
                Iterator it = list.iterator();
                z2 = false;
                while (it.hasNext()) {
                    InjectableMethod injectableMethod3 = (InjectableMethod) it.next();
                    if (InjectionPoint.overrides(method, injectableMethod3.method)) {
                        boolean z3 = !injectableMethod3.jsr330 || injectableMethod3.overrodeGuiceInject;
                        if (injectableMethod != null) {
                            injectableMethod.overrodeGuiceInject = z3;
                        }
                        if (z || !z3) {
                            it.remove();
                            this.injectableMembers.remove(injectableMethod3);
                            z2 = true;
                        }
                    }
                }
            } else {
                z2 = false;
            }
            return z2;
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Missing block: B:15:0x003e, code skipped:
            return;
     */
        public void add(com.google.inject.spi.InjectionPoint.InjectableMethod r4) {
            /*
            r3 = this;
            r0 = r3.injectableMembers;
            r0.add(r4);
            r0 = r3.position;
            r1 = com.google.inject.spi.InjectionPoint.Position.BOTTOM;
            if (r0 == r1) goto L_0x003e;
        L_0x000b:
            r0 = r4.isFinal();
            if (r0 == 0) goto L_0x0012;
        L_0x0011:
            goto L_0x003e;
        L_0x0012:
            r0 = r3.bySignature;
            if (r0 == 0) goto L_0x003d;
        L_0x0016:
            r0 = r4.method;
            r1 = r3.lastMethod;
            if (r0 != r1) goto L_0x001f;
        L_0x001c:
            r0 = r3.lastSignature;
            goto L_0x0026;
        L_0x001f:
            r0 = new com.google.inject.spi.InjectionPoint$Signature;
            r1 = r4.method;
            r0.<init>(r1);
        L_0x0026:
            r1 = r3.bySignature;
            r1 = r1.get(r0);
            r1 = (java.util.List) r1;
            if (r1 != 0) goto L_0x003a;
        L_0x0030:
            r1 = new java.util.ArrayList;
            r1.<init>();
            r2 = r3.bySignature;
            r2.put(r0, r1);
        L_0x003a:
            r1.add(r4);
        L_0x003d:
            return;
        L_0x003e:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.inject.spi.InjectionPoint$OverrideIndex.add(com.google.inject.spi.InjectionPoint$InjectableMethod):void");
        }
    }

    static class Pair<A, B> {
        final A a;
        final B b;

        public Pair(A a, B b) {
            this.a = a;
            this.b = b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Pair pair = (Pair) obj;
            if (!(this.a.equals(pair.a) && this.b.equals(pair.b))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }
    }

    enum Position {
        TOP,
        MIDDLE,
        BOTTOM
    }

    static class Signature {
        final int hash;
        final String name;
        final Class[] parameterTypes;

        Signature(Method method) {
            this.name = method.getName();
            this.parameterTypes = method.getParameterTypes();
            int hashCode = (this.name.hashCode() * 31) + this.parameterTypes.length;
            for (Object hashCode2 : this.parameterTypes) {
                hashCode = (hashCode * 31) + hashCode2.hashCode();
            }
            this.hash = hashCode;
        }

        public int hashCode() {
            return this.hash;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Signature)) {
                return false;
            }
            Signature signature = (Signature) obj;
            if (!this.name.equals(signature.name) || this.parameterTypes.length != signature.parameterTypes.length) {
                return false;
            }
            for (int i = 0; i < this.parameterTypes.length; i++) {
                if (this.parameterTypes[i] != signature.parameterTypes[i]) {
                    return false;
                }
            }
            return true;
        }
    }

    static class InjectableField extends InjectableMember {
        final Field field;

        InjectableField(TypeLiteral<?> typeLiteral, Field field, Annotation annotation) {
            super(typeLiteral, annotation);
            this.field = field;
        }

        /* Access modifiers changed, original: 0000 */
        public InjectionPoint toInjectionPoint() {
            return new InjectionPoint(this.declaringType, this.field, this.optional);
        }
    }

    static class InjectableMethod extends InjectableMember {
        final Method method;
        boolean overrodeGuiceInject;

        InjectableMethod(TypeLiteral<?> typeLiteral, Method method, Annotation annotation) {
            super(typeLiteral, annotation);
            this.method = method;
        }

        /* Access modifiers changed, original: 0000 */
        public InjectionPoint toInjectionPoint() {
            return new InjectionPoint(this.declaringType, this.method, this.optional);
        }

        public boolean isFinal() {
            return Modifier.isFinal(this.method.getModifiers());
        }
    }

    InjectionPoint(TypeLiteral<?> typeLiteral, Method method, boolean z) {
        this.member = method;
        this.declaringType = typeLiteral;
        this.optional = z;
        this.dependencies = forMember(method, typeLiteral, method.getParameterAnnotations());
    }

    InjectionPoint(TypeLiteral<?> typeLiteral, Constructor<?> constructor) {
        this.member = constructor;
        this.declaringType = typeLiteral;
        this.optional = false;
        this.dependencies = forMember(constructor, typeLiteral, constructor.getParameterAnnotations());
    }

    InjectionPoint(TypeLiteral<?> typeLiteral, Field field, boolean z) {
        Key key;
        this.member = field;
        this.declaringType = typeLiteral;
        this.optional = z;
        Annotation[] annotations = field.getAnnotations();
        Errors errors = new Errors(field);
        try {
            key = Annotations.getKey(typeLiteral.getFieldType(field), field, annotations, errors);
        } catch (ConfigurationException e) {
            errors.merge(e.getErrorMessages());
        } catch (ErrorsException e2) {
            errors.merge(e2.getErrors());
        }
        errors.throwConfigurationExceptionIfErrorsExist();
        this.dependencies = ImmutableList.of(newDependency(key, Nullability.allowsNull(annotations), -1));
        key = null;
        errors.throwConfigurationExceptionIfErrorsExist();
        this.dependencies = ImmutableList.of(newDependency(key, Nullability.allowsNull(annotations), -1));
    }

    private ImmutableList<Dependency<?>> forMember(Member member, TypeLiteral<?> typeLiteral, Annotation[][] annotationArr) {
        Errors errors = new Errors(member);
        Iterator it = Arrays.asList(annotationArr).iterator();
        Collection newArrayList = Lists.newArrayList();
        int i = 0;
        for (TypeLiteral key : typeLiteral.getParameterTypes(member)) {
            try {
                Annotation[] annotationArr2 = (Annotation[]) it.next();
                newArrayList.add(newDependency(Annotations.getKey(key, member, annotationArr2, errors), Nullability.allowsNull(annotationArr2), i));
                i++;
            } catch (ConfigurationException e) {
                errors.merge(e.getErrorMessages());
            } catch (ErrorsException e2) {
                errors.merge(e2.getErrors());
            }
        }
        errors.throwConfigurationExceptionIfErrorsExist();
        return ImmutableList.copyOf(newArrayList);
    }

    private <T> Dependency<T> newDependency(Key<T> key, boolean z, int i) {
        return new Dependency(this, key, z, i);
    }

    public Member getMember() {
        return this.member;
    }

    public List<Dependency<?>> getDependencies() {
        return this.dependencies;
    }

    public boolean isOptional() {
        return this.optional;
    }

    public boolean isToolable() {
        return ((AnnotatedElement) this.member).isAnnotationPresent(Toolable.class);
    }

    public TypeLiteral<?> getDeclaringType() {
        return this.declaringType;
    }

    public boolean equals(Object obj) {
        if (obj instanceof InjectionPoint) {
            InjectionPoint injectionPoint = (InjectionPoint) obj;
            if (this.member.equals(injectionPoint.member) && this.declaringType.equals(injectionPoint.declaringType)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.member.hashCode() ^ this.declaringType.hashCode();
    }

    public String toString() {
        return Classes.toString(this.member);
    }

    public static <T> InjectionPoint forConstructor(Constructor<T> constructor) {
        return new InjectionPoint(TypeLiteral.get(constructor.getDeclaringClass()), constructor);
    }

    public static <T> InjectionPoint forConstructor(Constructor<T> constructor, TypeLiteral<? extends T> typeLiteral) {
        if (typeLiteral.getRawType() != constructor.getDeclaringClass()) {
            new Errors(typeLiteral).constructorNotDefinedByType(constructor, typeLiteral).throwConfigurationExceptionIfErrorsExist();
        }
        return new InjectionPoint(typeLiteral, constructor);
    }

    public static InjectionPoint forConstructorOf(TypeLiteral<?> typeLiteral) {
        Class rawType = MoreTypes.getRawType(typeLiteral.getType());
        Errors errors = new Errors(rawType);
        filter.reset();
        Constructor constructor = null;
        if (filter.isWorthScanningForConstructors(com.google.inject.Inject.class.getName(), rawType)) {
            for (Constructor constructor2 : filter.getAllConstructors(com.google.inject.Inject.class.getName(), rawType)) {
                boolean optional;
                com.google.inject.Inject inject = (com.google.inject.Inject) constructor2.getAnnotation(com.google.inject.Inject.class);
                if (inject != null) {
                    optional = inject.optional();
                } else if (((Inject) constructor2.getAnnotation(Inject.class)) != null) {
                    optional = false;
                }
                if (optional) {
                    errors.optionalConstructor(constructor2);
                }
                if (constructor != null) {
                    errors.tooManyConstructors(rawType);
                }
                checkForMisplacedBindingAnnotations(constructor2, errors);
                constructor = constructor2;
            }
        }
        errors.throwConfigurationExceptionIfErrorsExist();
        if (constructor != null) {
            return new InjectionPoint(typeLiteral, constructor);
        }
        try {
            Constructor declaredConstructor = rawType.getDeclaredConstructor(new Class[0]);
            if (!Modifier.isPrivate(declaredConstructor.getModifiers()) || Modifier.isPrivate(rawType.getModifiers())) {
                checkForMisplacedBindingAnnotations(declaredConstructor, errors);
                return new InjectionPoint(typeLiteral, declaredConstructor);
            }
            errors.missingConstructor(rawType);
            throw new ConfigurationException(errors.getMessages());
        } catch (NoSuchMethodException unused) {
            errors.missingConstructor(rawType);
            throw new ConfigurationException(errors.getMessages());
        }
    }

    public static InjectionPoint forConstructorOf(Class<?> cls) {
        return forConstructorOf(TypeLiteral.get((Class) cls));
    }

    public static Set<InjectionPoint> forStaticMethodsAndFields(TypeLiteral<?> typeLiteral) {
        Object obj;
        Errors errors = new Errors();
        if (typeLiteral.getRawType().isInterface()) {
            errors.staticInjectionOnInterface(typeLiteral.getRawType());
            obj = null;
        } else {
            obj = getInjectionPoints(typeLiteral, true, errors);
        }
        if (!errors.hasErrors()) {
            return obj;
        }
        throw new ConfigurationException(errors.getMessages()).withPartialValue(obj);
    }

    public static Set<InjectionPoint> forStaticMethodsAndFields(Class<?> cls) {
        return forStaticMethodsAndFields(TypeLiteral.get((Class) cls));
    }

    public static Set<InjectionPoint> forInstanceMethodsAndFields(TypeLiteral<?> typeLiteral) {
        Errors errors = new Errors();
        Set injectionPoints = getInjectionPoints(typeLiteral, false, errors);
        if (!errors.hasErrors()) {
            return injectionPoints;
        }
        throw new ConfigurationException(errors.getMessages()).withPartialValue(injectionPoints);
    }

    public static Set<InjectionPoint> forInstanceMethodsAndFields(Class<?> cls) {
        return forInstanceMethodsAndFields(TypeLiteral.get((Class) cls));
    }

    private static boolean checkForMisplacedBindingAnnotations(Member member, Errors errors) {
        Annotation findBindingAnnotation = Annotations.findBindingAnnotation(errors, member, ((AnnotatedElement) member).getAnnotations());
        if (findBindingAnnotation == null) {
            return false;
        }
        if (member instanceof Method) {
            try {
                if (member.getDeclaringClass().getDeclaredField(member.getName()) != null) {
                    return false;
                }
            } catch (NoSuchFieldException unused) {
            }
        }
        errors.misplacedBindingAnnotation(member, findBindingAnnotation);
        return true;
    }

    static Annotation getAtInject(AnnotatedElement annotatedElement) {
        Annotation annotation = annotatedElement.getAnnotation(Inject.class);
        return annotation == null ? annotatedElement.getAnnotation(com.google.inject.Inject.class) : annotation;
    }

    private static Set<InjectionPoint> getInjectionPoints(TypeLiteral<?> typeLiteral, boolean z, Errors errors) {
        InjectableMembers injectableMembers = new InjectableMembers();
        OverrideIndex overrideIndex = new OverrideIndex(injectableMembers);
        overrideIndex.position = Position.BOTTOM;
        filter.reset();
        computeInjectableMembers(typeLiteral, z, errors, injectableMembers, overrideIndex, filter);
        if (injectableMembers.isEmpty()) {
            return Collections.emptySet();
        }
        Builder builder = ImmutableSet.builder();
        for (InjectableMember injectableMember = injectableMembers.head; injectableMember != null; injectableMember = injectableMember.next) {
            try {
                builder.add(injectableMember.toInjectionPoint());
            } catch (ConfigurationException e) {
                if (!injectableMember.optional) {
                    errors.merge(e.getErrorMessages());
                }
            }
        }
        return builder.build();
    }

    private static void computeInjectableMembers(TypeLiteral<?> typeLiteral, boolean z, Errors errors, InjectableMembers injectableMembers, OverrideIndex overrideIndex, HierarchyTraversalFilter hierarchyTraversalFilter) {
        Class rawType = typeLiteral.getRawType();
        if (isWorthScanning(hierarchyTraversalFilter, rawType)) {
            Class superclass = rawType.getSuperclass();
            if (isWorthScanning(hierarchyTraversalFilter, superclass)) {
                computeInjectableMembers(typeLiteral.getSupertype(superclass), z, errors, injectableMembers, overrideIndex, hierarchyTraversalFilter);
                overrideIndex.position = Position.MIDDLE;
            } else {
                overrideIndex.position = Position.TOP;
            }
            Set<Field> allFields = hierarchyTraversalFilter.getAllFields(com.google.inject.Inject.class.getName(), rawType);
            if (allFields != null) {
                for (Field field : allFields) {
                    if (Modifier.isStatic(field.getModifiers()) == z) {
                        Annotation atInject = getAtInject(field);
                        if (atInject != null) {
                            InjectableField injectableField = new InjectableField(typeLiteral, field, atInject);
                            if (injectableField.jsr330 && Modifier.isFinal(field.getModifiers())) {
                                errors.cannotInjectFinalField(field);
                            }
                            injectableMembers.add(injectableField);
                        }
                    }
                }
            }
            Set<Method> allMethods = hierarchyTraversalFilter.getAllMethods(com.google.inject.Inject.class.getName(), rawType);
            if (allMethods != null) {
                for (Method method : allMethods) {
                    if (isEligibleForInjection(method, z)) {
                        Annotation atInject2 = getAtInject(method);
                        if (atInject2 != null) {
                            InjectableMethod injectableMethod = new InjectableMethod(typeLiteral, method, atInject2);
                            if (checkForMisplacedBindingAnnotations(method, errors) || !isValidMethod(injectableMethod, errors)) {
                                if (overrideIndex.removeIfOverriddenBy(method, false, injectableMethod)) {
                                    logger.log(Level.WARNING, "Method: {0} is not a valid injectable method (because it either has misplaced binding annotations or specifies type parameters) but is overriding a method that is valid. Because it is not valid, the method will not be injected. To fix this, make the method a valid injectable method.", method);
                                }
                            } else if (z) {
                                injectableMembers.add(injectableMethod);
                            } else {
                                overrideIndex.removeIfOverriddenBy(method, true, injectableMethod);
                                overrideIndex.add(injectableMethod);
                            }
                        } else if (overrideIndex.removeIfOverriddenBy(method, false, null)) {
                            logger.log(Level.WARNING, "Method: {0} is not annotated with @Inject but is overriding a method that is annotated with @javax.inject.Inject.  Because it is not annotated with @Inject, the method will not be injected. To fix this, annotate the method with @Inject.", method);
                        }
                    }
                }
            }
        }
    }

    private static boolean isWorthScanning(HierarchyTraversalFilter hierarchyTraversalFilter, Class<?> cls) {
        return hierarchyTraversalFilter.isWorthScanningForFields(com.google.inject.Inject.class.getName(), cls);
    }

    private static boolean isEligibleForInjection(Method method, boolean z) {
        return (Modifier.isStatic(method.getModifiers()) != z || method.isBridge() || method.isSynthetic()) ? false : true;
    }

    private static boolean isValidMethod(InjectableMethod injectableMethod, Errors errors) {
        boolean z = true;
        if (!injectableMethod.jsr330) {
            return true;
        }
        Method method = injectableMethod.method;
        if (Modifier.isAbstract(method.getModifiers())) {
            errors.cannotInjectAbstractMethod(method);
            z = false;
        }
        if (method.getTypeParameters().length <= 0) {
            return z;
        }
        errors.cannotInjectMethodWithTypeParameters(method);
        return false;
    }

    private static List<TypeLiteral<?>> hierarchyFor(TypeLiteral<?> typeLiteral) {
        ArrayList arrayList = new ArrayList();
        TypeLiteral typeLiteral2;
        while (typeLiteral2.getRawType() != Object.class) {
            arrayList.add(typeLiteral2);
            typeLiteral2 = typeLiteral2.getSupertype(typeLiteral2.getRawType().getSuperclass());
        }
        return arrayList;
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
}
