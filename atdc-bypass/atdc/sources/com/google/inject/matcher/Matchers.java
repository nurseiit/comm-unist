package com.google.inject.matcher;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Method;
import org.roboguice.shaded.goole.common.base.Preconditions;

public class Matchers {
    private static final Matcher<Object> ANY = new Any();

    private static class AnnotatedWith extends AbstractMatcher<AnnotatedElement> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Annotation annotation;

        public AnnotatedWith(Annotation annotation) {
            this.annotation = (Annotation) Preconditions.checkNotNull(annotation, "annotation");
            Matchers.checkForRuntimeRetention(annotation.annotationType());
        }

        public boolean matches(AnnotatedElement annotatedElement) {
            Annotation annotation = annotatedElement.getAnnotation(this.annotation.annotationType());
            return annotation != null && this.annotation.equals(annotation);
        }

        public boolean equals(Object obj) {
            return (obj instanceof AnnotatedWith) && ((AnnotatedWith) obj).annotation.equals(this.annotation);
        }

        public int hashCode() {
            return this.annotation.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("annotatedWith(");
            stringBuilder.append(this.annotation);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class AnnotatedWithType extends AbstractMatcher<AnnotatedElement> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Class<? extends Annotation> annotationType;

        public AnnotatedWithType(Class<? extends Annotation> cls) {
            this.annotationType = (Class) Preconditions.checkNotNull(cls, "annotation type");
            Matchers.checkForRuntimeRetention(cls);
        }

        public boolean matches(AnnotatedElement annotatedElement) {
            return annotatedElement.isAnnotationPresent(this.annotationType);
        }

        public boolean equals(Object obj) {
            return (obj instanceof AnnotatedWithType) && ((AnnotatedWithType) obj).annotationType.equals(this.annotationType);
        }

        public int hashCode() {
            return this.annotationType.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("annotatedWith(");
            stringBuilder.append(this.annotationType.getSimpleName());
            stringBuilder.append(".class)");
            return stringBuilder.toString();
        }
    }

    private static class Any extends AbstractMatcher<Object> implements Serializable {
        private static final long serialVersionUID = 0;

        public boolean matches(Object obj) {
            return true;
        }

        public String toString() {
            return "any()";
        }

        private Any() {
        }

        public Object readResolve() {
            return Matchers.any();
        }
    }

    private static class IdenticalTo extends AbstractMatcher<Object> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object value;

        public IdenticalTo(Object obj) {
            this.value = Preconditions.checkNotNull(obj, Param.VALUE);
        }

        public boolean matches(Object obj) {
            return this.value == obj;
        }

        public boolean equals(Object obj) {
            return (obj instanceof IdenticalTo) && ((IdenticalTo) obj).value == this.value;
        }

        public int hashCode() {
            return System.identityHashCode(this.value) * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("identicalTo(");
            stringBuilder.append(this.value);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class InPackage extends AbstractMatcher<Class> implements Serializable {
        private static final long serialVersionUID = 0;
        private final String packageName;
        private final transient Package targetPackage;

        public InPackage(Package packageR) {
            this.targetPackage = (Package) Preconditions.checkNotNull(packageR, "package");
            this.packageName = packageR.getName();
        }

        public boolean matches(Class cls) {
            return cls.getPackage().equals(this.targetPackage);
        }

        public boolean equals(Object obj) {
            return (obj instanceof InPackage) && ((InPackage) obj).targetPackage.equals(this.targetPackage);
        }

        public int hashCode() {
            return this.targetPackage.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("inPackage(");
            stringBuilder.append(this.targetPackage.getName());
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public Object readResolve() {
            return Matchers.inPackage(Package.getPackage(this.packageName));
        }
    }

    private static class InSubpackage extends AbstractMatcher<Class> implements Serializable {
        private static final long serialVersionUID = 0;
        private final String targetPackageName;

        public InSubpackage(String str) {
            this.targetPackageName = str;
        }

        public boolean matches(Class cls) {
            String name = cls.getPackage().getName();
            if (!name.equals(this.targetPackageName)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(this.targetPackageName);
                stringBuilder.append(".");
                if (!name.startsWith(stringBuilder.toString())) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return (obj instanceof InSubpackage) && ((InSubpackage) obj).targetPackageName.equals(this.targetPackageName);
        }

        public int hashCode() {
            return this.targetPackageName.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("inSubpackage(");
            stringBuilder.append(this.targetPackageName);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class Not<T> extends AbstractMatcher<T> implements Serializable {
        private static final long serialVersionUID = 0;
        final Matcher<? super T> delegate;

        private Not(Matcher<? super T> matcher) {
            this.delegate = (Matcher) Preconditions.checkNotNull(matcher, "delegate");
        }

        public boolean matches(T t) {
            return this.delegate.matches(t) ^ 1;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Not) && ((Not) obj).delegate.equals(this.delegate);
        }

        public int hashCode() {
            return -this.delegate.hashCode();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("not(");
            stringBuilder.append(this.delegate);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class Only extends AbstractMatcher<Object> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object value;

        public Only(Object obj) {
            this.value = Preconditions.checkNotNull(obj, Param.VALUE);
        }

        public boolean matches(Object obj) {
            return this.value.equals(obj);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Only) && ((Only) obj).value.equals(this.value);
        }

        public int hashCode() {
            return this.value.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("only(");
            stringBuilder.append(this.value);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class Returns extends AbstractMatcher<Method> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Matcher<? super Class<?>> returnType;

        public Returns(Matcher<? super Class<?>> matcher) {
            this.returnType = (Matcher) Preconditions.checkNotNull(matcher, "return type matcher");
        }

        public boolean matches(Method method) {
            return this.returnType.matches(method.getReturnType());
        }

        public boolean equals(Object obj) {
            return (obj instanceof Returns) && ((Returns) obj).returnType.equals(this.returnType);
        }

        public int hashCode() {
            return this.returnType.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("returns(");
            stringBuilder.append(this.returnType);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class SubclassesOf extends AbstractMatcher<Class> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> superclass;

        public SubclassesOf(Class<?> cls) {
            this.superclass = (Class) Preconditions.checkNotNull(cls, "superclass");
        }

        public boolean matches(Class cls) {
            return this.superclass.isAssignableFrom(cls);
        }

        public boolean equals(Object obj) {
            return (obj instanceof SubclassesOf) && ((SubclassesOf) obj).superclass.equals(this.superclass);
        }

        public int hashCode() {
            return this.superclass.hashCode() * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("subclassesOf(");
            stringBuilder.append(this.superclass.getSimpleName());
            stringBuilder.append(".class)");
            return stringBuilder.toString();
        }
    }

    private Matchers() {
    }

    public static Matcher<Object> any() {
        return ANY;
    }

    public static <T> Matcher<T> not(Matcher<? super T> matcher) {
        return new Not(matcher);
    }

    private static void checkForRuntimeRetention(Class<? extends Annotation> cls) {
        Retention retention = (Retention) cls.getAnnotation(Retention.class);
        boolean z = retention != null && retention.value() == RetentionPolicy.RUNTIME;
        Preconditions.checkArgument(z, "Annotation %s is missing RUNTIME retention", cls.getSimpleName());
    }

    public static Matcher<AnnotatedElement> annotatedWith(Class<? extends Annotation> cls) {
        return new AnnotatedWithType(cls);
    }

    public static Matcher<AnnotatedElement> annotatedWith(Annotation annotation) {
        return new AnnotatedWith(annotation);
    }

    public static Matcher<Class> subclassesOf(Class<?> cls) {
        return new SubclassesOf(cls);
    }

    public static Matcher<Object> only(Object obj) {
        return new Only(obj);
    }

    public static Matcher<Object> identicalTo(Object obj) {
        return new IdenticalTo(obj);
    }

    public static Matcher<Class> inPackage(Package packageR) {
        return new InPackage(packageR);
    }

    public static Matcher<Class> inSubpackage(String str) {
        return new InSubpackage(str);
    }

    public static Matcher<Method> returns(Matcher<? super Class<?>> matcher) {
        return new Returns(matcher);
    }
}
