package com.google.inject;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

public class HierarchyTraversalFilter {
    public void reset() {
    }

    public boolean isWorthScanning(Class<?> cls) {
        return (cls == null || cls == Object.class) ? false : true;
    }

    public boolean isWorthScanningForFields(String str, Class<?> cls) {
        return isWorthScanning(cls);
    }

    public Set<Field> getAllFields(String str, Class<?> cls) {
        HashSet hashSet = new HashSet();
        for (Object add : cls.getDeclaredFields()) {
            hashSet.add(add);
        }
        return hashSet;
    }

    public boolean isWorthScanningForMethods(String str, Class<?> cls) {
        return isWorthScanning(cls);
    }

    public Set<Method> getAllMethods(String str, Class<?> cls) {
        HashSet hashSet = new HashSet();
        for (Object add : cls.getDeclaredMethods()) {
            hashSet.add(add);
        }
        return hashSet;
    }

    public boolean isWorthScanningForConstructors(String str, Class<?> cls) {
        return isWorthScanning(cls);
    }

    public Set<Constructor<?>> getAllConstructors(String str, Class<?> cls) {
        HashSet hashSet = new HashSet();
        for (Object add : cls.getDeclaredConstructors()) {
            hashSet.add(add);
        }
        return hashSet;
    }
}
