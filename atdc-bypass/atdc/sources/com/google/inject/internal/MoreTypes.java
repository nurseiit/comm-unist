package com.google.inject.internal;

import com.google.inject.ConfigurationException;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.TypeLiteral;
import com.google.inject.util.Types;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableMap.Builder;

public class MoreTypes {
    public static final Type[] EMPTY_TYPE_ARRAY = new Type[0];
    private static final Map<TypeLiteral<?>, TypeLiteral<?>> PRIMITIVE_TO_WRAPPER = new Builder().put(TypeLiteral.get(Boolean.TYPE), TypeLiteral.get(Boolean.class)).put(TypeLiteral.get(Byte.TYPE), TypeLiteral.get(Byte.class)).put(TypeLiteral.get(Short.TYPE), TypeLiteral.get(Short.class)).put(TypeLiteral.get(Integer.TYPE), TypeLiteral.get(Integer.class)).put(TypeLiteral.get(Long.TYPE), TypeLiteral.get(Long.class)).put(TypeLiteral.get(Float.TYPE), TypeLiteral.get(Float.class)).put(TypeLiteral.get(Double.TYPE), TypeLiteral.get(Double.class)).put(TypeLiteral.get(Character.TYPE), TypeLiteral.get(Character.class)).put(TypeLiteral.get(Void.TYPE), TypeLiteral.get(Void.class)).build();
    private static HashMap<Class<?>, Type> cacheGenericSuperclass = new HashMap();

    private interface CompositeType {
        boolean isFullySpecified();
    }

    public static class GenericArrayTypeImpl implements GenericArrayType, Serializable, CompositeType {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = MoreTypes.canonicalize(type);
        }

        public Type getGenericComponentType() {
            return this.componentType;
        }

        public boolean isFullySpecified() {
            return MoreTypes.isFullySpecified(this.componentType);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && MoreTypes.equals(this, (GenericArrayType) obj);
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(MoreTypes.typeToString(this.componentType));
            stringBuilder.append("[]");
            return stringBuilder.toString();
        }
    }

    public static class ParameterizedTypeImpl implements ParameterizedType, Serializable, CompositeType {
        private static final long serialVersionUID = 0;
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            int i = 0;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = type != null || cls.getEnclosingClass() == null;
                Preconditions.checkArgument(z, "No owner type for enclosed %s", type2);
                boolean z2 = type == null || cls.getEnclosingClass() != null;
                Preconditions.checkArgument(z2, "Owner type for unenclosed %s", type2);
            }
            if (type == null) {
                type = null;
            } else {
                type = MoreTypes.canonicalize(type);
            }
            this.ownerType = type;
            this.rawType = MoreTypes.canonicalize(type2);
            this.typeArguments = (Type[]) typeArr.clone();
            while (i < this.typeArguments.length) {
                Preconditions.checkNotNull(this.typeArguments[i], "type parameter");
                MoreTypes.checkNotPrimitive(this.typeArguments[i], "type parameters");
                this.typeArguments[i] = MoreTypes.canonicalize(this.typeArguments[i]);
                i++;
            }
        }

        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        public Type getRawType() {
            return this.rawType;
        }

        public Type getOwnerType() {
            return this.ownerType;
        }

        public boolean isFullySpecified() {
            if ((this.ownerType != null && !MoreTypes.isFullySpecified(this.ownerType)) || !MoreTypes.isFullySpecified(this.rawType)) {
                return false;
            }
            for (Type access$100 : this.typeArguments) {
                if (!MoreTypes.isFullySpecified(access$100)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && MoreTypes.equals(this, (ParameterizedType) obj);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ MoreTypes.hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            int i = 1;
            StringBuilder stringBuilder = new StringBuilder((this.typeArguments.length + 1) * 30);
            stringBuilder.append(MoreTypes.typeToString(this.rawType));
            if (this.typeArguments.length == 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append("<");
            stringBuilder.append(MoreTypes.typeToString(this.typeArguments[0]));
            while (i < this.typeArguments.length) {
                stringBuilder.append(", ");
                stringBuilder.append(MoreTypes.typeToString(this.typeArguments[i]));
                i++;
            }
            stringBuilder.append(">");
            return stringBuilder.toString();
        }
    }

    public static class WildcardTypeImpl implements WildcardType, Serializable, CompositeType {
        private static final long serialVersionUID = 0;
        private final Type lowerBound;
        private final Type upperBound;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            Preconditions.checkArgument(typeArr2.length <= 1, "Must have at most one lower bound.");
            Preconditions.checkArgument(typeArr.length == 1, "Must have exactly one upper bound.");
            if (typeArr2.length == 1) {
                Preconditions.checkNotNull(typeArr2[0], "lowerBound");
                MoreTypes.checkNotPrimitive(typeArr2[0], "wildcard bounds");
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                Preconditions.checkArgument(z, "bounded both ways");
                this.lowerBound = MoreTypes.canonicalize(typeArr2[0]);
                this.upperBound = Object.class;
                return;
            }
            Preconditions.checkNotNull(typeArr[0], "upperBound");
            MoreTypes.checkNotPrimitive(typeArr[0], "wildcard bounds");
            this.lowerBound = null;
            this.upperBound = MoreTypes.canonicalize(typeArr[0]);
        }

        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        public Type[] getLowerBounds() {
            if (this.lowerBound == null) {
                return MoreTypes.EMPTY_TYPE_ARRAY;
            }
            return new Type[]{this.lowerBound};
        }

        public boolean isFullySpecified() {
            return MoreTypes.isFullySpecified(this.upperBound) && (this.lowerBound == null || MoreTypes.isFullySpecified(this.lowerBound));
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && MoreTypes.equals(this, (WildcardType) obj);
        }

        public int hashCode() {
            return (this.lowerBound != null ? this.lowerBound.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            StringBuilder stringBuilder;
            if (this.lowerBound != null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("? super ");
                stringBuilder.append(MoreTypes.typeToString(this.lowerBound));
                return stringBuilder.toString();
            } else if (this.upperBound == Object.class) {
                return "?";
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("? extends ");
                stringBuilder.append(MoreTypes.typeToString(this.upperBound));
                return stringBuilder.toString();
            }
        }
    }

    private MoreTypes() {
    }

    public static <T> TypeLiteral<T> canonicalizeForKey(TypeLiteral<T> typeLiteral) {
        Type type = typeLiteral.getType();
        if (!isFullySpecified(type)) {
            throw new ConfigurationException(new Errors().keyNotFullySpecified(typeLiteral).getMessages());
        } else if (typeLiteral.getRawType() == Provider.class) {
            return TypeLiteral.get(Types.providerOf(((ParameterizedType) type).getActualTypeArguments()[0]));
        } else {
            TypeLiteral<T> typeLiteral2 = (TypeLiteral) PRIMITIVE_TO_WRAPPER.get(typeLiteral);
            if (typeLiteral2 != null) {
                typeLiteral = typeLiteral2;
            }
            return typeLiteral;
        }
    }

    private static boolean isFullySpecified(Type type) {
        if (type instanceof Class) {
            return true;
        }
        if (type instanceof CompositeType) {
            return ((CompositeType) type).isFullySpecified();
        }
        if (type instanceof TypeVariable) {
            return false;
        }
        return ((CompositeType) canonicalize(type)).isFullySpecified();
    }

    public static Type canonicalize(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                cls = new GenericArrayTypeImpl(canonicalize(cls.getComponentType()));
            }
            return cls;
        } else if (type instanceof CompositeType) {
            return type;
        } else {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
            } else if (type instanceof GenericArrayType) {
                return new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
            } else {
                if (!(type instanceof WildcardType)) {
                    return type;
                }
                WildcardType wildcardType = (WildcardType) type;
                return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
            }
        }
    }

    public static Class<?> getRawType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            Preconditions.checkArgument(rawType instanceof Class, "Expected a Class, but <%s> is of type %s", type, type.getClass().getName());
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a Class, ParameterizedType, or GenericArrayType, but <");
            stringBuilder.append(type);
            stringBuilder.append("> is of type ");
            stringBuilder.append(type.getClass().getName());
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public static boolean equals(Type type, Type type2) {
        boolean z = true;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            if (!(Objects.equal(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments()))) {
                z = false;
            }
            return z;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!(Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds()))) {
                z = false;
            }
            return z;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (!(typeVariable.getGenericDeclaration().equals(typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName()))) {
                z = false;
            }
            return z;
        }
    }

    private static int hashCodeOrZero(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    public static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type getGenericSupertype(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                if (interfaces[i] == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(interfaces[i])) {
                    return getGenericSupertype(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            HierarchyTraversalFilter createHierarchyTraversalFilter = Guice.createHierarchyTraversalFilter();
            while (createHierarchyTraversalFilter.isWorthScanning(cls)) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return getGenericSuperclass(cls);
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return getGenericSupertype(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type getGenericSuperclass(Class<?> cls) {
        Type type = (Type) cacheGenericSuperclass.get(cls);
        if (type != null) {
            return type;
        }
        type = cls.getGenericSuperclass();
        cacheGenericSuperclass.put(cls, type);
        return type;
    }

    public static Type resolveTypeVariable(Type type, Class<?> cls, TypeVariable typeVariable) {
        Class declaringClassOf = declaringClassOf(typeVariable);
        if (declaringClassOf == null) {
            return typeVariable;
        }
        type = getGenericSupertype(type, cls, declaringClassOf);
        if (!(type instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) type).getActualTypeArguments()[indexOf(declaringClassOf.getTypeParameters(), typeVariable)];
    }

    private static int indexOf(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static Class<?> declaringClassOf(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    private static void checkNotPrimitive(Type type, String str) {
        boolean z = ((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true;
        Preconditions.checkArgument(z, "Primitive types are not allowed in %s: %s", str, type);
    }
}
