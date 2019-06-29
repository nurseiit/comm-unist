package com.google.inject;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public abstract class AnnotationDatabase {
    public abstract void fillAnnotationClassesAndConstructors(HashMap<String, Map<String, Set<String>>> hashMap);

    public abstract void fillAnnotationClassesAndFieldsNames(HashMap<String, Map<String, Set<String>>> hashMap);

    public abstract void fillAnnotationClassesAndMethods(HashMap<String, Map<String, Set<String>>> hashMap);

    public abstract void fillBindableClasses(HashSet<String> hashSet);

    public abstract void fillClassesContainingInjectionPointSet(HashSet<String> hashSet);

    protected AnnotationDatabase() {
    }
}
