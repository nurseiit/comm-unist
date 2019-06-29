package com.google.inject;

import com.google.inject.internal.MoreTypes;
import com.google.inject.util.Types;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.List;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableList;

public class TypeLiteral<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    protected TypeLiteral() {
        this.type = getSuperclassTypeParameter(getClass());
        this.rawType = MoreTypes.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    TypeLiteral(Type type) {
        this.type = MoreTypes.canonicalize((Type) Preconditions.checkNotNull(type, "type"));
        this.rawType = MoreTypes.getRawType(this.type);
        this.hashCode = this.type.hashCode();
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = MoreTypes.getGenericSuperclass(cls);
        if (!(genericSuperclass instanceof Class)) {
            return MoreTypes.canonicalize(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    static TypeLiteral<?> fromSuperclassTypeParameter(Class<?> cls) {
        return new TypeLiteral(getSuperclassTypeParameter(cls));
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    /* Access modifiers changed, original: final */
    public final TypeLiteral<Provider<T>> providerType() {
        return get(Types.providerOf(getType()));
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof TypeLiteral) && MoreTypes.equals(this.type, ((TypeLiteral) obj).type);
    }

    public final String toString() {
        return MoreTypes.typeToString(this.type);
    }

    public static TypeLiteral<?> get(Type type) {
        return new TypeLiteral(type);
    }

    public static <T> TypeLiteral<T> get(Class<T> cls) {
        return new TypeLiteral(cls);
    }

    private List<TypeLiteral<?>> resolveAll(Type[] typeArr) {
        Object[] objArr = new TypeLiteral[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            objArr[i] = resolve(typeArr[i]);
        }
        return ImmutableList.copyOf(objArr);
    }

    /* Access modifiers changed, original: 0000 */
    public TypeLiteral<?> resolve(Type type) {
        return get(resolveType(type));
    }

    /* Access modifiers changed, original: 0000 */
    public Type resolveType(Type type) {
        Type resolveTypeVariable;
        while (type instanceof TypeVariable) {
            type = (TypeVariable) type;
            resolveTypeVariable = MoreTypes.resolveTypeVariable(this.type, this.rawType, type);
            if (resolveTypeVariable == type) {
                return resolveTypeVariable;
            }
            type = resolveTypeVariable;
        }
        Type resolveType;
        if (type instanceof GenericArrayType) {
            type = (GenericArrayType) type;
            resolveTypeVariable = type.getGenericComponentType();
            resolveType = resolveType(resolveTypeVariable);
            if (resolveTypeVariable != resolveType) {
                type = Types.arrayOf(resolveType);
            }
            return type;
        }
        int i = 0;
        if (type instanceof ParameterizedType) {
            type = (ParameterizedType) type;
            resolveTypeVariable = type.getOwnerType();
            Type resolveType2 = resolveType(resolveTypeVariable);
            Object obj = resolveType2 != resolveTypeVariable ? 1 : null;
            Type[] actualTypeArguments = type.getActualTypeArguments();
            int length = actualTypeArguments.length;
            while (i < length) {
                Type resolveType3 = resolveType(actualTypeArguments[i]);
                if (resolveType3 != actualTypeArguments[i]) {
                    if (obj == null) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        obj = 1;
                    }
                    actualTypeArguments[i] = resolveType3;
                }
                i++;
            }
            if (obj != null) {
                type = Types.newParameterizedTypeWithOwner(resolveType2, type.getRawType(), actualTypeArguments);
            }
            return type;
        } else if (!(type instanceof WildcardType)) {
            return type;
        } else {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                resolveType = resolveType(lowerBounds[0]);
                if (resolveType != lowerBounds[0]) {
                    return Types.supertypeOf(resolveType);
                }
            } else if (upperBounds.length == 1) {
                resolveTypeVariable = resolveType(upperBounds[0]);
                if (resolveTypeVariable != upperBounds[0]) {
                    return Types.subtypeOf(resolveTypeVariable);
                }
            }
            return wildcardType;
        }
    }

    public TypeLiteral<?> getSupertype(Class<?> cls) {
        Preconditions.checkArgument(cls.isAssignableFrom(this.rawType), "%s is not a supertype of %s", cls, this.type);
        return resolve(MoreTypes.getGenericSupertype(this.type, this.rawType, cls));
    }

    public TypeLiteral<?> getFieldType(Field field) {
        Preconditions.checkArgument(field.getDeclaringClass().isAssignableFrom(this.rawType), "%s is not defined by a supertype of %s", field, this.type);
        return resolve(field.getGenericType());
    }

    public List<TypeLiteral<?>> getParameterTypes(Member member) {
        Type[] genericParameterTypes;
        if (member instanceof Method) {
            Method method = (Method) member;
            Preconditions.checkArgument(method.getDeclaringClass().isAssignableFrom(this.rawType), "%s is not defined by a supertype of %s", method, this.type);
            genericParameterTypes = method.getGenericParameterTypes();
        } else if (member instanceof Constructor) {
            Constructor constructor = (Constructor) member;
            Preconditions.checkArgument(constructor.getDeclaringClass().isAssignableFrom(this.rawType), "%s does not construct a supertype of %s", constructor, this.type);
            genericParameterTypes = constructor.getGenericParameterTypes();
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Not a method or a constructor: ");
            stringBuilder.append(member);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return resolveAll(genericParameterTypes);
    }

    public List<TypeLiteral<?>> getExceptionTypes(Member member) {
        Type[] genericExceptionTypes;
        if (member instanceof Method) {
            Method method = (Method) member;
            Preconditions.checkArgument(method.getDeclaringClass().isAssignableFrom(this.rawType), "%s is not defined by a supertype of %s", method, this.type);
            genericExceptionTypes = method.getGenericExceptionTypes();
        } else if (member instanceof Constructor) {
            Constructor constructor = (Constructor) member;
            Preconditions.checkArgument(constructor.getDeclaringClass().isAssignableFrom(this.rawType), "%s does not construct a supertype of %s", constructor, this.type);
            genericExceptionTypes = constructor.getGenericExceptionTypes();
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Not a method or a constructor: ");
            stringBuilder.append(member);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return resolveAll(genericExceptionTypes);
    }

    public TypeLiteral<?> getReturnType(Method method) {
        Preconditions.checkArgument(method.getDeclaringClass().isAssignableFrom(this.rawType), "%s is not defined by a supertype of %s", method, this.type);
        return resolve(method.getGenericReturnType());
    }
}
