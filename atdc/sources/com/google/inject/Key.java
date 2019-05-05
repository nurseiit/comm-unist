package com.google.inject;

import com.google.inject.internal.Annotations;
import com.google.inject.internal.MoreTypes;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.base.Supplier;
import org.roboguice.shaded.goole.common.base.Suppliers;

public class Key<T> {
    private final AnnotationStrategy annotationStrategy;
    private final int hashCode;
    private final Supplier<String> toStringSupplier;
    private final TypeLiteral<T> typeLiteral;

    interface AnnotationStrategy {
        Annotation getAnnotation();

        Class<? extends Annotation> getAnnotationType();

        boolean hasAttributes();

        AnnotationStrategy withoutAttributes();
    }

    static class AnnotationInstanceStrategy implements AnnotationStrategy {
        final Annotation annotation;

        public boolean hasAttributes() {
            return true;
        }

        AnnotationInstanceStrategy(Annotation annotation) {
            this.annotation = (Annotation) Preconditions.checkNotNull(annotation, "annotation");
        }

        public AnnotationStrategy withoutAttributes() {
            return new AnnotationTypeStrategy(getAnnotationType(), this.annotation);
        }

        public Annotation getAnnotation() {
            return this.annotation;
        }

        public Class<? extends Annotation> getAnnotationType() {
            return this.annotation.annotationType();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AnnotationInstanceStrategy)) {
                return false;
            }
            return this.annotation.equals(((AnnotationInstanceStrategy) obj).annotation);
        }

        public int hashCode() {
            return this.annotation.hashCode();
        }

        public String toString() {
            return this.annotation.toString();
        }
    }

    static class AnnotationTypeStrategy implements AnnotationStrategy {
        final Annotation annotation;
        final Class<? extends Annotation> annotationType;

        public boolean hasAttributes() {
            return false;
        }

        AnnotationTypeStrategy(Class<? extends Annotation> cls, Annotation annotation) {
            this.annotationType = (Class) Preconditions.checkNotNull(cls, "annotation type");
            this.annotation = annotation;
        }

        public AnnotationStrategy withoutAttributes() {
            throw new UnsupportedOperationException("Key already has no attributes.");
        }

        public Annotation getAnnotation() {
            return this.annotation;
        }

        public Class<? extends Annotation> getAnnotationType() {
            return this.annotationType;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AnnotationTypeStrategy)) {
                return false;
            }
            return this.annotationType.equals(((AnnotationTypeStrategy) obj).annotationType);
        }

        public int hashCode() {
            return this.annotationType.hashCode();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("@");
            stringBuilder.append(this.annotationType.getName());
            return stringBuilder.toString();
        }
    }

    enum NullAnnotationStrategy implements AnnotationStrategy {
        INSTANCE;

        public Annotation getAnnotation() {
            return null;
        }

        public Class<? extends Annotation> getAnnotationType() {
            return null;
        }

        public boolean hasAttributes() {
            return false;
        }

        public String toString() {
            return "[none]";
        }

        public AnnotationStrategy withoutAttributes() {
            throw new UnsupportedOperationException("Key already has no attributes.");
        }
    }

    protected Key(Class<? extends Annotation> cls) {
        this.annotationStrategy = strategyFor((Class) cls);
        this.typeLiteral = MoreTypes.canonicalizeForKey(TypeLiteral.fromSuperclassTypeParameter(getClass()));
        this.hashCode = computeHashCode();
        this.toStringSupplier = createToStringSupplier();
    }

    protected Key(Annotation annotation) {
        this.annotationStrategy = strategyFor(annotation);
        this.typeLiteral = MoreTypes.canonicalizeForKey(TypeLiteral.fromSuperclassTypeParameter(getClass()));
        this.hashCode = computeHashCode();
        this.toStringSupplier = createToStringSupplier();
    }

    protected Key() {
        this.annotationStrategy = NullAnnotationStrategy.INSTANCE;
        this.typeLiteral = MoreTypes.canonicalizeForKey(TypeLiteral.fromSuperclassTypeParameter(getClass()));
        this.hashCode = computeHashCode();
        this.toStringSupplier = createToStringSupplier();
    }

    private Key(Type type, AnnotationStrategy annotationStrategy) {
        this.annotationStrategy = annotationStrategy;
        this.typeLiteral = MoreTypes.canonicalizeForKey(TypeLiteral.get(type));
        this.hashCode = computeHashCode();
        this.toStringSupplier = createToStringSupplier();
    }

    private Key(TypeLiteral<T> typeLiteral, AnnotationStrategy annotationStrategy) {
        this.annotationStrategy = annotationStrategy;
        this.typeLiteral = MoreTypes.canonicalizeForKey(typeLiteral);
        this.hashCode = computeHashCode();
        this.toStringSupplier = createToStringSupplier();
    }

    private int computeHashCode() {
        return (this.typeLiteral.hashCode() * 31) + this.annotationStrategy.hashCode();
    }

    private Supplier<String> createToStringSupplier() {
        return Suppliers.memoize(new Supplier<String>() {
            public String get() {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Key[type=");
                stringBuilder.append(Key.this.typeLiteral);
                stringBuilder.append(", annotation=");
                stringBuilder.append(Key.this.annotationStrategy);
                stringBuilder.append("]");
                return stringBuilder.toString();
            }
        });
    }

    public final TypeLiteral<T> getTypeLiteral() {
        return this.typeLiteral;
    }

    public final Class<? extends Annotation> getAnnotationType() {
        return this.annotationStrategy.getAnnotationType();
    }

    public final Annotation getAnnotation() {
        return this.annotationStrategy.getAnnotation();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean hasAnnotationType() {
        return this.annotationStrategy.getAnnotationType() != null;
    }

    /* Access modifiers changed, original: 0000 */
    public String getAnnotationName() {
        Annotation annotation = this.annotationStrategy.getAnnotation();
        if (annotation != null) {
            return annotation.toString();
        }
        return this.annotationStrategy.getAnnotationType().toString();
    }

    /* Access modifiers changed, original: 0000 */
    public Class<? super T> getRawType() {
        return this.typeLiteral.getRawType();
    }

    /* Access modifiers changed, original: 0000 */
    public Key<Provider<T>> providerKey() {
        return ofType(this.typeLiteral.providerType());
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Key)) {
            return false;
        }
        Key key = (Key) obj;
        if (!(this.annotationStrategy.equals(key.annotationStrategy) && this.typeLiteral.equals(key.typeLiteral))) {
            z = false;
        }
        return z;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final String toString() {
        return (String) this.toStringSupplier.get();
    }

    static <T> Key<T> get(Class<T> cls, AnnotationStrategy annotationStrategy) {
        return new Key((Type) cls, annotationStrategy);
    }

    public static <T> Key<T> get(Class<T> cls) {
        return new Key((Type) cls, NullAnnotationStrategy.INSTANCE);
    }

    public static <T> Key<T> get(Class<T> cls, Class<? extends Annotation> cls2) {
        return new Key((Type) cls, strategyFor((Class) cls2));
    }

    public static <T> Key<T> get(Class<T> cls, Annotation annotation) {
        return new Key((Type) cls, strategyFor(annotation));
    }

    public static Key<?> get(Type type) {
        return new Key(type, NullAnnotationStrategy.INSTANCE);
    }

    public static Key<?> get(Type type, Class<? extends Annotation> cls) {
        return new Key(type, strategyFor((Class) cls));
    }

    public static Key<?> get(Type type, Annotation annotation) {
        return new Key(type, strategyFor(annotation));
    }

    public static <T> Key<T> get(TypeLiteral<T> typeLiteral) {
        return new Key((TypeLiteral) typeLiteral, NullAnnotationStrategy.INSTANCE);
    }

    public static <T> Key<T> get(TypeLiteral<T> typeLiteral, Class<? extends Annotation> cls) {
        return new Key((TypeLiteral) typeLiteral, strategyFor((Class) cls));
    }

    public static <T> Key<T> get(TypeLiteral<T> typeLiteral, Annotation annotation) {
        return new Key((TypeLiteral) typeLiteral, strategyFor(annotation));
    }

    public <T> Key<T> ofType(Class<T> cls) {
        return new Key((Type) cls, this.annotationStrategy);
    }

    public Key<?> ofType(Type type) {
        return new Key(type, this.annotationStrategy);
    }

    public <T> Key<T> ofType(TypeLiteral<T> typeLiteral) {
        return new Key((TypeLiteral) typeLiteral, this.annotationStrategy);
    }

    public boolean hasAttributes() {
        return this.annotationStrategy.hasAttributes();
    }

    public Key<T> withoutAttributes() {
        return new Key(this.typeLiteral, this.annotationStrategy.withoutAttributes());
    }

    static AnnotationStrategy strategyFor(Annotation annotation) {
        Preconditions.checkNotNull(annotation, "annotation");
        Class annotationType = annotation.annotationType();
        ensureRetainedAtRuntime(annotationType);
        ensureIsBindingAnnotation(annotationType);
        if (Annotations.isMarker(annotationType)) {
            return new AnnotationTypeStrategy(annotationType, annotation);
        }
        return new AnnotationInstanceStrategy(Annotations.canonicalizeIfNamed(annotation));
    }

    static AnnotationStrategy strategyFor(Class<? extends Annotation> cls) {
        Class canonicalizeIfNamed = Annotations.canonicalizeIfNamed((Class) cls);
        if (Annotations.isAllDefaultMethods(canonicalizeIfNamed)) {
            return strategyFor(Annotations.generateAnnotation(canonicalizeIfNamed));
        }
        Preconditions.checkNotNull(canonicalizeIfNamed, "annotation type");
        ensureRetainedAtRuntime(canonicalizeIfNamed);
        ensureIsBindingAnnotation(canonicalizeIfNamed);
        return new AnnotationTypeStrategy(canonicalizeIfNamed, null);
    }

    private static void ensureRetainedAtRuntime(Class<? extends Annotation> cls) {
        Preconditions.checkArgument(Annotations.isRetainedAtRuntime(cls), "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME).", cls.getName());
    }

    private static void ensureIsBindingAnnotation(Class<? extends Annotation> cls) {
        Preconditions.checkArgument(Annotations.isBindingAnnotation(cls), "%s is not a binding annotation. Please annotate it with @BindingAnnotation.", cls.getName());
    }
}
