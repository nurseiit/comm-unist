package com.google.android.gms.internal;

import com.google.android.gms.drive.MetadataChangeSet;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.GenericTypeIndicator;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class zg {
    private static final ConcurrentMap<Class<?>, zh<?>> zzcjF = new ConcurrentHashMap();

    public static Map<String, Object> zzG(Map<String, Object> map) {
        Object zzao = zzao(map);
        zd.zzaF(zzao instanceof Map);
        return (Map) zzao;
    }

    public static <T> T zza(Object obj, GenericTypeIndicator<T> genericTypeIndicator) {
        Type genericSuperclass = genericTypeIndicator.getClass().getGenericSuperclass();
        String valueOf;
        StringBuilder stringBuilder;
        if (genericSuperclass instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
            if (parameterizedType.getRawType().equals(GenericTypeIndicator.class)) {
                return zza(obj, parameterizedType.getActualTypeArguments()[0]);
            }
            valueOf = String.valueOf(genericSuperclass);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
            stringBuilder.append("Not a direct subclass of GenericTypeIndicator: ");
            stringBuilder.append(valueOf);
            throw new DatabaseException(stringBuilder.toString());
        }
        valueOf = String.valueOf(genericSuperclass);
        stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
        stringBuilder.append("Not a direct subclass of GenericTypeIndicator: ");
        stringBuilder.append(valueOf);
        throw new DatabaseException(stringBuilder.toString());
    }

    public static <T> T zza(Object obj, Class<T> cls) {
        return zzb(obj, (Class) cls);
    }

    private static <T> T zza(Object obj, Type type) {
        if (obj == null) {
            return null;
        }
        StringBuilder stringBuilder;
        String valueOf;
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            int i = 0;
            Map zzap;
            if (List.class.isAssignableFrom(cls)) {
                type = parameterizedType.getActualTypeArguments()[0];
                if (obj instanceof List) {
                    List<Object> list = (List) obj;
                    ArrayList arrayList = new ArrayList(list.size());
                    for (Object zza : list) {
                        arrayList.add(zza(zza, type));
                    }
                    return arrayList;
                }
                String valueOf2 = String.valueOf(obj.getClass());
                stringBuilder = new StringBuilder(String.valueOf(valueOf2).length() + 47);
                stringBuilder.append("Expected a List while deserializing, but got a ");
                stringBuilder.append(valueOf2);
                throw new DatabaseException(stringBuilder.toString());
            } else if (Map.class.isAssignableFrom(cls)) {
                Object obj2 = parameterizedType.getActualTypeArguments()[0];
                type = parameterizedType.getActualTypeArguments()[1];
                if (obj2.equals(String.class)) {
                    zzap = zzap(obj);
                    HashMap hashMap = new HashMap();
                    for (Entry entry : zzap.entrySet()) {
                        hashMap.put((String) entry.getKey(), zza(entry.getValue(), type));
                    }
                    return hashMap;
                }
                valueOf = String.valueOf(obj2);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 70);
                stringBuilder.append("Only Maps with string keys are supported, but found Map with key type ");
                stringBuilder.append(valueOf);
                throw new DatabaseException(stringBuilder.toString());
            } else if (Collection.class.isAssignableFrom(cls)) {
                throw new DatabaseException("Collections are not supported, please use Lists instead");
            } else {
                zzap = zzap(obj);
                zh zzf = zzf(cls);
                HashMap hashMap2 = new HashMap();
                TypeVariable[] typeParameters = zzf.zzcjG.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (actualTypeArguments.length != typeParameters.length) {
                    throw new IllegalStateException("Mismatched lengths for type variables and actual types");
                }
                while (i < typeParameters.length) {
                    hashMap2.put(typeParameters[i], actualTypeArguments[i]);
                    i++;
                }
                return zzf.zze(zzap, hashMap2);
            }
        } else if (type instanceof Class) {
            return zzb(obj, (Class) type);
        } else {
            if (type instanceof WildcardType) {
                throw new DatabaseException("Generic wildcard types are not supported");
            } else if (type instanceof GenericArrayType) {
                throw new DatabaseException("Generic Arrays are not supported, please use Lists instead");
            } else {
                valueOf = String.valueOf(type);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 26);
                stringBuilder.append("Unknown type encountered: ");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
    }

    public static Object zzan(Object obj) {
        return zzao(obj);
    }

    private static <T> Object zzao(T t) {
        if (t == null) {
            return null;
        }
        if (t instanceof Number) {
            if ((t instanceof Float) || (t instanceof Double)) {
                Number number = (Number) t;
                double doubleValue = number.doubleValue();
                return (doubleValue > 9.223372036854776E18d || doubleValue < -9.223372036854776E18d || Math.floor(doubleValue) != doubleValue) ? Double.valueOf(doubleValue) : Long.valueOf(number.longValue());
            } else if (t instanceof Short) {
                throw new DatabaseException("Shorts are not supported, please use int or long");
            } else if (!(t instanceof Byte)) {
                return t;
            } else {
                throw new DatabaseException("Bytes are not supported, please use int or long");
            }
        } else if ((t instanceof String) || (t instanceof Boolean)) {
            return t;
        } else {
            if (t instanceof Character) {
                throw new DatabaseException("Characters are not supported, please strings");
            } else if (t instanceof Map) {
                HashMap hashMap = new HashMap();
                for (Entry entry : ((Map) t).entrySet()) {
                    Object key = entry.getKey();
                    if (key instanceof String) {
                        hashMap.put((String) key, zzao(entry.getValue()));
                    } else {
                        throw new DatabaseException("Maps with non-string keys are not supported");
                    }
                }
                return hashMap;
            } else if (t instanceof Collection) {
                if (t instanceof List) {
                    List<Object> list = (List) t;
                    ArrayList arrayList = new ArrayList(list.size());
                    for (Object zzao : list) {
                        arrayList.add(zzao(zzao));
                    }
                    return arrayList;
                }
                throw new DatabaseException("Serializing Collections is not supported, please use Lists instead");
            } else if (!t.getClass().isArray()) {
                return t instanceof Enum ? ((Enum) t).name() : zzf(t.getClass()).zzas(t);
            } else {
                throw new DatabaseException("Serializing Arrays is not supported, please use Lists instead");
            }
        }
    }

    private static Map<String, Object> zzap(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        String valueOf = String.valueOf(obj.getClass());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 46);
        stringBuilder.append("Expected a Map while deserializing, but got a ");
        stringBuilder.append(valueOf);
        throw new DatabaseException(stringBuilder.toString());
    }

    private static Double zzaq(Object obj) {
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        String valueOf;
        StringBuilder stringBuilder;
        if (obj instanceof Long) {
            Long l = (Long) obj;
            Double valueOf2 = Double.valueOf(l.doubleValue());
            if (valueOf2.longValue() == l.longValue()) {
                return valueOf2;
            }
            valueOf = String.valueOf(obj);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 97);
            stringBuilder.append("Loss of precision while converting number to double: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(". Did you mean to use a 64-bit long instead?");
            throw new DatabaseException(stringBuilder.toString());
        } else if (obj instanceof Double) {
            return (Double) obj;
        } else {
            valueOf = String.valueOf(obj.getClass().getName());
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 44);
            stringBuilder.append("Failed to convert a value of type ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" to double");
            throw new DatabaseException(stringBuilder.toString());
        }
    }

    private static <T> T zzb(Object obj, Class<T> cls) {
        if (obj == null) {
            return null;
        }
        StringBuilder stringBuilder;
        String valueOf;
        StringBuilder stringBuilder2;
        String valueOf2;
        if (cls.isPrimitive() || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls) || Character.class.isAssignableFrom(cls)) {
            if (Integer.class.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls)) {
                if (obj instanceof Integer) {
                    return (Integer) obj;
                }
                if ((obj instanceof Long) || (obj instanceof Double)) {
                    Number number = (Number) obj;
                    double doubleValue = number.doubleValue();
                    if (doubleValue >= -2.147483648E9d && doubleValue <= 2.147483647E9d) {
                        return Integer.valueOf(number.intValue());
                    }
                    stringBuilder = new StringBuilder(MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES);
                    stringBuilder.append("Numeric value out of 32-bit integer range: ");
                    stringBuilder.append(doubleValue);
                    stringBuilder.append(". Did you mean to use a long or double instead of an int?");
                    throw new DatabaseException(stringBuilder.toString());
                }
                valueOf = String.valueOf(obj.getClass().getName());
                stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 41);
                stringBuilder2.append("Failed to convert a value of type ");
                stringBuilder2.append(valueOf);
                stringBuilder2.append(" to int");
                throw new DatabaseException(stringBuilder2.toString());
            } else if (Boolean.class.isAssignableFrom(cls) || Boolean.TYPE.isAssignableFrom(cls)) {
                if (obj instanceof Boolean) {
                    return (Boolean) obj;
                }
                valueOf = String.valueOf(obj.getClass().getName());
                stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 43);
                stringBuilder2.append("Failed to convert value of type ");
                stringBuilder2.append(valueOf);
                stringBuilder2.append(" to boolean");
                throw new DatabaseException(stringBuilder2.toString());
            } else if (Double.class.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls)) {
                return zzaq(obj);
            } else {
                if (Long.class.isAssignableFrom(cls) || Long.TYPE.isAssignableFrom(cls)) {
                    if (obj instanceof Integer) {
                        return Long.valueOf(((Integer) obj).longValue());
                    }
                    if (obj instanceof Long) {
                        return (Long) obj;
                    }
                    if (obj instanceof Double) {
                        Double d = (Double) obj;
                        if (d.doubleValue() >= -9.223372036854776E18d && d.doubleValue() <= 9.223372036854776E18d) {
                            return Long.valueOf(d.longValue());
                        }
                        valueOf = String.valueOf(d);
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 89);
                        stringBuilder2.append("Numeric value out of 64-bit long range: ");
                        stringBuilder2.append(valueOf);
                        stringBuilder2.append(". Did you mean to use a double instead of a long?");
                        throw new DatabaseException(stringBuilder2.toString());
                    }
                    valueOf = String.valueOf(obj.getClass().getName());
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 42);
                    stringBuilder2.append("Failed to convert a value of type ");
                    stringBuilder2.append(valueOf);
                    stringBuilder2.append(" to long");
                    throw new DatabaseException(stringBuilder2.toString());
                } else if (Float.class.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls)) {
                    return Float.valueOf(zzaq(obj).floatValue());
                } else {
                    if (Short.class.isAssignableFrom(cls) || Short.TYPE.isAssignableFrom(cls)) {
                        throw new DatabaseException("Deserializing to shorts is not supported");
                    } else if (Byte.class.isAssignableFrom(cls) || Byte.TYPE.isAssignableFrom(cls)) {
                        throw new DatabaseException("Deserializing to bytes is not supported");
                    } else if (Character.class.isAssignableFrom(cls) || Character.TYPE.isAssignableFrom(cls)) {
                        throw new DatabaseException("Deserializing to char is not supported");
                    } else {
                        valueOf2 = String.valueOf(cls);
                        stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                        stringBuilder2.append("Unknown primitive type: ");
                        stringBuilder2.append(valueOf2);
                        throw new IllegalArgumentException(stringBuilder2.toString());
                    }
                }
            }
        } else if (String.class.isAssignableFrom(cls)) {
            if (obj instanceof String) {
                return (String) obj;
            }
            valueOf = String.valueOf(obj.getClass().getName());
            stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 42);
            stringBuilder2.append("Failed to convert value of type ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" to String");
            throw new DatabaseException(stringBuilder2.toString());
        } else if (cls.isArray()) {
            throw new DatabaseException("Converting to Arrays is not supported, please use Listsinstead");
        } else if (cls.getTypeParameters().length > 0) {
            valueOf2 = String.valueOf(cls.getName());
            stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 75);
            stringBuilder2.append("Class ");
            stringBuilder2.append(valueOf2);
            stringBuilder2.append(" has generic type parameters, please use GenericTypeIndicator instead");
            throw new DatabaseException(stringBuilder2.toString());
        } else if (cls.equals(Object.class)) {
            return obj;
        } else {
            if (cls.isEnum()) {
                return zzc(obj, cls);
            }
            zh zzf = zzf(cls);
            if (obj instanceof Map) {
                return zzf.zze(zzap(obj), Collections.emptyMap());
            }
            valueOf = String.valueOf(obj.getClass().getName());
            valueOf2 = String.valueOf(cls.getName());
            stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 38) + String.valueOf(valueOf2).length());
            stringBuilder.append("Can't convert object of type ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" to type ");
            stringBuilder.append(valueOf2);
            throw new DatabaseException(stringBuilder.toString());
        }
    }

    private static <T> T zzc(Object obj, Class<T> cls) {
        String valueOf;
        StringBuilder stringBuilder;
        String str;
        if (obj instanceof String) {
            str = (String) obj;
            try {
                return Enum.valueOf(cls, str);
            } catch (IllegalArgumentException unused) {
                valueOf = String.valueOf(cls.getName());
                stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 42) + String.valueOf(str).length());
                stringBuilder.append("Could not find enum value of ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" for value \"");
                stringBuilder.append(str);
                stringBuilder.append("\"");
                throw new DatabaseException(stringBuilder.toString());
            }
        }
        valueOf = String.valueOf(cls);
        str = String.valueOf(obj.getClass());
        stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 57) + String.valueOf(str).length());
        stringBuilder.append("Expected a String while deserializing to enum ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" but got a ");
        stringBuilder.append(str);
        throw new DatabaseException(stringBuilder.toString());
    }

    private static <T> zh<T> zzf(Class<T> cls) {
        zh zhVar = (zh) zzcjF.get(cls);
        if (zhVar != null) {
            return zhVar;
        }
        zhVar = new zh(cls);
        zzcjF.put(cls, zhVar);
        return zhVar;
    }
}
