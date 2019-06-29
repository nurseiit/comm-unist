package com.google.inject;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AnnotatedGuiceHierarchyTraversalFilter extends HierarchyTraversalFilter {
    private HashSet<String> classesContainingInjectionPointsSet = new HashSet();
    private HierarchyTraversalFilter delegate;
    private boolean hasHadInjectionPoints;
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassWithInjectionNameToConstructorSet;
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassWithInjectionNameToFieldSet;
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassWithInjectionNameToMethodSet;

    public AnnotatedGuiceHierarchyTraversalFilter(AnnotationDatabaseFinder annotationDatabaseFinder, HierarchyTraversalFilter hierarchyTraversalFilter) {
        this.delegate = hierarchyTraversalFilter;
        this.mapAnnotationToMapClassWithInjectionNameToFieldSet = annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet();
        this.mapAnnotationToMapClassWithInjectionNameToMethodSet = annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet();
        this.mapAnnotationToMapClassWithInjectionNameToConstructorSet = annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet();
        this.classesContainingInjectionPointsSet = annotationDatabaseFinder.getClassesContainingInjectionPointsSet();
        if (this.classesContainingInjectionPointsSet.isEmpty()) {
            throw new IllegalStateException("Unable to find Annotation Database which should be output as part of annotation processing");
        }
    }

    public void reset() {
        this.delegate.reset();
        this.hasHadInjectionPoints = false;
    }

    public boolean isWorthScanning(Class<?> cls) {
        if (this.hasHadInjectionPoints) {
            return this.delegate.isWorthScanning(cls);
        }
        if (cls != null) {
            Class cls2;
            while (!this.classesContainingInjectionPointsSet.contains(cls2.getName())) {
                cls2 = cls2.getSuperclass();
                if (!this.delegate.isWorthScanning(cls2)) {
                }
            }
            this.hasHadInjectionPoints = true;
            return true;
        }
        return false;
    }

    public boolean isWorthScanningForFields(String str, Class<?> cls) {
        if (this.hasHadInjectionPoints) {
            return this.delegate.isWorthScanning(cls);
        }
        if (cls != null) {
            Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToFieldSet.get(str);
            if (map == null) {
                return false;
            }
            Class cls2;
            while (!map.containsKey(cls2.getName())) {
                cls2 = cls2.getSuperclass();
                if (!this.delegate.isWorthScanning(cls2)) {
                }
            }
            this.hasHadInjectionPoints = true;
            return true;
        }
        return false;
    }

    public Set<Field> getAllFields(String str, Class<?> cls) {
        Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToFieldSet.get(str);
        if (!(cls == null || map == null)) {
            Set<String> set = (Set) map.get(cls.getName());
            if (set != null) {
                HashSet hashSet = new HashSet();
                try {
                    for (String declaredField : set) {
                        hashSet.add(cls.getDeclaredField(declaredField));
                    }
                    return hashSet;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return Collections.emptySet();
    }

    public boolean isWorthScanningForMethods(String str, Class<?> cls) {
        if (this.hasHadInjectionPoints) {
            return this.delegate.isWorthScanning(cls);
        }
        if (cls != null) {
            Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToMethodSet.get(str);
            if (map == null) {
                return false;
            }
            Class cls2;
            while (!map.containsKey(cls2.getName())) {
                cls2 = cls2.getSuperclass();
                if (!this.delegate.isWorthScanning(cls2)) {
                }
            }
            this.hasHadInjectionPoints = true;
            return true;
        }
        return false;
    }

    public Set<Method> getAllMethods(String str, Class<?> cls) {
        Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToMethodSet.get(str);
        if (!(cls == null || map == null)) {
            Set<String> set = (Set) map.get(cls.getName());
            if (set != null) {
                HashSet hashSet = new HashSet();
                try {
                    for (String split : set) {
                        String[] split2 = split.split(":");
                        String str2 = split2[0];
                        int i = 1;
                        Class[] clsArr = new Class[(split2.length - 1)];
                        while (i < split2.length) {
                            clsArr[i - 1] = getClass().getClassLoader().loadClass(split2[i]);
                            i++;
                        }
                        hashSet.add(cls.getDeclaredMethod(str2, clsArr));
                    }
                    return hashSet;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return Collections.emptySet();
    }

    public boolean isWorthScanningForConstructors(String str, Class<?> cls) {
        if (this.hasHadInjectionPoints) {
            return this.delegate.isWorthScanning(cls);
        }
        if (cls != null) {
            Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToConstructorSet.get(str);
            if (map == null) {
                return false;
            }
            Class cls2;
            while (!map.containsKey(cls2.getName())) {
                cls2 = cls2.getSuperclass();
                if (!this.delegate.isWorthScanning(cls2)) {
                }
            }
            this.hasHadInjectionPoints = true;
            return true;
        }
        return false;
    }

    public Set<Constructor<?>> getAllConstructors(String str, Class<?> cls) {
        Map map = (Map) this.mapAnnotationToMapClassWithInjectionNameToConstructorSet.get(str);
        if (!(cls == null || map == null)) {
            Set<String> set = (Set) map.get(cls.getName());
            if (set != null) {
                HashSet hashSet = new HashSet();
                try {
                    for (String split : set) {
                        String[] split2 = split.split(":");
                        int i = 1;
                        Class[] clsArr = new Class[(split2.length - 1)];
                        while (i < split2.length) {
                            clsArr[i - 1] = getClass().getClassLoader().loadClass(split2[i]);
                            i++;
                        }
                        hashSet.add(cls.getDeclaredConstructor(clsArr));
                    }
                    return hashSet;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return Collections.emptySet();
    }
}
