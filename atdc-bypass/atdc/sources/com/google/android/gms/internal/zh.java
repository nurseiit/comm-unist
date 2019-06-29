package com.google.android.gms.internal;

import android.util.Log;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.Exclude;
import com.google.firebase.database.IgnoreExtraProperties;
import com.google.firebase.database.PropertyName;
import com.google.firebase.database.ThrowOnExtraProperties;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

final class zh<T> {
    private final Class<T> zzcjG;
    private final Constructor<T> zzcjH;
    private final boolean zzcjI;
    private final boolean zzcjJ;
    private final Map<String, String> zzcjK = new HashMap();
    private final Map<String, Method> zzcjL = new HashMap();
    private final Map<String, Method> zzcjM = new HashMap();
    private final Map<String, Field> zzcjN = new HashMap();

    public zh(Class<T> cls) {
        Constructor declaredConstructor;
        Object obj;
        String str;
        String valueOf;
        this.zzcjG = cls;
        this.zzcjI = cls.isAnnotationPresent(ThrowOnExtraProperties.class);
        this.zzcjJ = cls.isAnnotationPresent(IgnoreExtraProperties.class) ^ 1;
        try {
            declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
        } catch (NoSuchMethodException unused) {
            declaredConstructor = null;
        }
        this.zzcjH = declaredConstructor;
        for (Method method : cls.getMethods()) {
            obj = ((!method.getName().startsWith("get") && !method.getName().startsWith("is")) || method.getDeclaringClass().equals(Object.class) || !Modifier.isPublic(method.getModifiers()) || Modifier.isStatic(method.getModifiers()) || method.getReturnType().equals(Void.TYPE) || method.getParameterTypes().length != 0 || method.isAnnotationPresent(Exclude.class)) ? null : 1;
            if (obj != null) {
                String zza = zza(method);
                zzhe(zza);
                method.setAccessible(true);
                if (this.zzcjL.containsKey(zza)) {
                    str = "Found conflicting getters for name: ";
                    valueOf = String.valueOf(method.getName());
                    throw new DatabaseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                }
                this.zzcjL.put(zza, method);
            }
        }
        for (Field field : cls.getFields()) {
            obj = (field.getDeclaringClass().equals(Object.class) || !Modifier.isPublic(field.getModifiers()) || Modifier.isStatic(field.getModifiers()) || Modifier.isTransient(field.getModifiers()) || field.isAnnotationPresent(Exclude.class)) ? null : 1;
            if (obj != null) {
                zzhe(zza(field));
            }
        }
        Class cls2 = cls;
        do {
            String zza2;
            for (Method method2 : cls2.getDeclaredMethods()) {
                Object obj2 = (method2.getName().startsWith("set") && !method2.getDeclaringClass().equals(Object.class) && !Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(Void.TYPE) && method2.getParameterTypes().length == 1 && !method2.isAnnotationPresent(Exclude.class)) ? 1 : null;
                if (obj2 != null) {
                    zza2 = zza(method2);
                    String str2 = (String) this.zzcjK.get(zza2.toLowerCase());
                    if (str2 == null) {
                        continue;
                    } else if (str2.equals(zza2)) {
                        Method method3 = (Method) this.zzcjM.get(zza2);
                        if (method3 == null) {
                            method2.setAccessible(true);
                            this.zzcjM.put(zza2, method2);
                        } else {
                            zd.zzb(method2.getDeclaringClass().isAssignableFrom(method3.getDeclaringClass()), "Expected override from a base class");
                            zd.zzb(method2.getReturnType().equals(Void.TYPE), "Expected void return type");
                            zd.zzb(method3.getReturnType().equals(Void.TYPE), "Expected void return type");
                            Class[] parameterTypes = method2.getParameterTypes();
                            Class[] parameterTypes2 = method3.getParameterTypes();
                            zd.zzb(parameterTypes.length == 1, "Expected exactly one parameter");
                            zd.zzb(parameterTypes2.length == 1, "Expected exactly one parameter");
                            obj2 = (method2.getName().equals(method3.getName()) && parameterTypes[0].equals(parameterTypes2[0])) ? 1 : null;
                            if (obj2 == null) {
                                str = String.valueOf(method2.getName());
                                valueOf = String.valueOf(method3.getName());
                                String valueOf2 = String.valueOf(method3.getDeclaringClass().getName());
                                StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 69) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
                                stringBuilder.append("Found a conflicting setters with name: ");
                                stringBuilder.append(str);
                                stringBuilder.append(" (conflicts with ");
                                stringBuilder.append(valueOf);
                                stringBuilder.append(" defined on ");
                                stringBuilder.append(valueOf2);
                                stringBuilder.append(")");
                                throw new DatabaseException(stringBuilder.toString());
                            }
                        }
                    } else {
                        str = "Found setter with invalid case-sensitive name: ";
                        valueOf = String.valueOf(method2.getName());
                        throw new DatabaseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    }
                }
            }
            for (Field field2 : cls2.getDeclaredFields()) {
                zza2 = zza(field2);
                if (this.zzcjK.containsKey(zza2.toLowerCase()) && !this.zzcjN.containsKey(zza2)) {
                    field2.setAccessible(true);
                    this.zzcjN.put(zza2, field2);
                }
            }
            cls2 = cls2.getSuperclass();
            if (cls2 == null) {
                break;
            }
        } while (!cls2.equals(Object.class));
        if (this.zzcjK.isEmpty()) {
            valueOf = "No properties to serialize found on class ";
            String valueOf3 = String.valueOf(cls.getName());
            throw new DatabaseException(valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
        }
    }

    private static String zza(AccessibleObject accessibleObject) {
        return accessibleObject.isAnnotationPresent(PropertyName.class) ? ((PropertyName) accessibleObject.getAnnotation(PropertyName.class)).value() : null;
    }

    private static String zza(Field field) {
        String zza = zza((AccessibleObject) field);
        return zza != null ? zza : field.getName();
    }

    private static String zza(Method method) {
        String zza = zza((AccessibleObject) method);
        if (zza != null) {
            return zza;
        }
        String name = method.getName();
        r1 = new String[3];
        int i = 0;
        r1[0] = "get";
        r1[1] = "set";
        r1[2] = "is";
        String str = null;
        for (int i2 = 0; i2 < 3; i2++) {
            String str2 = r1[i2];
            if (name.startsWith(str2)) {
                str = str2;
            }
        }
        if (str == null) {
            String str3 = "Unknown Bean prefix for method: ";
            name = String.valueOf(name);
            throw new IllegalArgumentException(name.length() != 0 ? str3.concat(name) : new String(str3));
        }
        char[] toCharArray = name.substring(str.length()).toCharArray();
        while (i < toCharArray.length && Character.isUpperCase(toCharArray[i])) {
            toCharArray[i] = Character.toLowerCase(toCharArray[i]);
            i++;
        }
        return new String(toCharArray);
    }

    private static Type zza(Type type, Map<TypeVariable<Class<T>>, Type> map) {
        if (!(type instanceof TypeVariable)) {
            return type;
        }
        Type type2 = (Type) map.get(type);
        if (type2 != null) {
            return type2;
        }
        String valueOf = String.valueOf(type);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 23);
        stringBuilder.append("Could not resolve type ");
        stringBuilder.append(valueOf);
        throw new IllegalStateException(stringBuilder.toString());
    }

    private final void zzhe(String str) {
        String str2 = (String) this.zzcjK.put(str.toLowerCase(), str);
        if (str2 != null && !str.equals(str2)) {
            String str3 = "Found two getters or fields with conflicting case sensitivity for property: ";
            str = String.valueOf(str.toLowerCase());
            throw new DatabaseException(str.length() != 0 ? str3.concat(str) : new String(str3));
        }
    }

    public final Map<String, Object> zzas(T t) {
        String valueOf;
        if (this.zzcjG.isAssignableFrom(t.getClass())) {
            HashMap hashMap = new HashMap();
            for (String str : this.zzcjK.values()) {
                Object invoke;
                if (this.zzcjL.containsKey(str)) {
                    try {
                        invoke = ((Method) this.zzcjL.get(str)).invoke(t, new Object[0]);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                }
                Field field = (Field) this.zzcjN.get(str);
                if (field == null) {
                    String str2 = "Bean property without field or getter:";
                    valueOf = String.valueOf(str);
                    throw new IllegalStateException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                }
                try {
                    invoke = field.get(t);
                } catch (IllegalAccessException e3) {
                    throw new RuntimeException(e3);
                }
                hashMap.put(str, zg.zzao(invoke));
            }
            return hashMap;
        }
        String valueOf2 = String.valueOf(t.getClass());
        valueOf = String.valueOf(this.zzcjG);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf2).length() + 59) + String.valueOf(valueOf).length());
        stringBuilder.append("Can't serialize object of class ");
        stringBuilder.append(valueOf2);
        stringBuilder.append(" with BeanMapper for class ");
        stringBuilder.append(valueOf);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final T zze(Map<String, Object> map, Map<TypeVariable<Class<T>>, Type> map2) {
        if (this.zzcjH == null) {
            String valueOf = String.valueOf(this.zzcjG.getName());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 49);
            stringBuilder.append("Class ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" is missing a constructor with no arguments");
            throw new DatabaseException(stringBuilder.toString());
        }
        try {
            Object newInstance = this.zzcjH.newInstance(new Object[0]);
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (this.zzcjM.containsKey(str)) {
                    Method method = (Method) this.zzcjM.get(str);
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    if (genericParameterTypes.length != 1) {
                        throw new IllegalStateException("Setter does not have exactly one parameter");
                    }
                    Object zzb = zg.zza(entry.getValue(), zza(genericParameterTypes[0], map2));
                    try {
                        method.invoke(newInstance, new Object[]{zzb});
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else if (this.zzcjN.containsKey(str)) {
                    Field field = (Field) this.zzcjN.get(str);
                    try {
                        field.set(newInstance, zg.zza(entry.getValue(), zza(field.getGenericType(), map2)));
                    } catch (IllegalAccessException e3) {
                        throw new RuntimeException(e3);
                    }
                } else {
                    String valueOf2 = String.valueOf(this.zzcjG.getName());
                    StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(str).length() + 36) + String.valueOf(valueOf2).length());
                    stringBuilder2.append("No setter/field for ");
                    stringBuilder2.append(str);
                    stringBuilder2.append(" found on class ");
                    stringBuilder2.append(valueOf2);
                    valueOf2 = stringBuilder2.toString();
                    if (this.zzcjK.containsKey(str.toLowerCase())) {
                        valueOf2 = String.valueOf(valueOf2).concat(" (fields/setters are case sensitive!)");
                    }
                    if (this.zzcjI) {
                        throw new DatabaseException(valueOf2);
                    } else if (this.zzcjJ) {
                        Log.w("ClassMapper", valueOf2);
                    }
                }
            }
            return newInstance;
        } catch (InstantiationException e4) {
            throw new RuntimeException(e4);
        } catch (IllegalAccessException e32) {
            throw new RuntimeException(e32);
        } catch (InvocationTargetException e22) {
            throw new RuntimeException(e22);
        }
    }
}
