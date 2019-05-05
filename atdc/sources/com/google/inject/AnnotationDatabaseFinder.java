package com.google.inject;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AnnotationDatabaseFinder {
    private HashSet<String> bindableClassesSet = new HashSet();
    private HashSet<String> classesContainingInjectionPointsSet = new HashSet();
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet = new HashMap();
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassContainingInjectionToInjectedFieldSet = new HashMap();
    private HashMap<String, Map<String, Set<String>>> mapAnnotationToMapClassContainingInjectionToInjectedMethodSet = new HashMap();

    public AnnotationDatabaseFinder(String[] strArr) {
        try {
            for (Object obj : strArr) {
                String str = "AnnotationDatabaseImpl";
                if (!(obj == null || "".equals(obj))) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(obj);
                    stringBuilder.append(".");
                    stringBuilder.append(str);
                    str = stringBuilder.toString();
                }
                addAnnotationDatabase(getAnnotationDatabaseInstance(str));
            }
        } catch (InstantiationException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            throw new RuntimeException(e2);
        } catch (ClassNotFoundException e3) {
            e3.printStackTrace();
            throw new RuntimeException(e3);
        }
    }

    public HashSet<String> getClassesContainingInjectionPointsSet() {
        return this.classesContainingInjectionPointsSet;
    }

    public HashMap<String, Map<String, Set<String>>> getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet() {
        return this.mapAnnotationToMapClassContainingInjectionToInjectedFieldSet;
    }

    public HashMap<String, Map<String, Set<String>>> getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet() {
        return this.mapAnnotationToMapClassContainingInjectionToInjectedMethodSet;
    }

    public HashMap<String, Map<String, Set<String>>> getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet() {
        return this.mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet;
    }

    public Set<String> getBindableClassesSet() {
        return this.bindableClassesSet;
    }

    private AnnotationDatabase getAnnotationDatabaseInstance(String str) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        return (AnnotationDatabase) Class.forName(str).newInstance();
    }

    private void addAnnotationDatabase(AnnotationDatabase annotationDatabase) {
        annotationDatabase.fillAnnotationClassesAndFieldsNames(this.mapAnnotationToMapClassContainingInjectionToInjectedFieldSet);
        annotationDatabase.fillAnnotationClassesAndMethods(this.mapAnnotationToMapClassContainingInjectionToInjectedMethodSet);
        annotationDatabase.fillAnnotationClassesAndConstructors(this.mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet);
        annotationDatabase.fillClassesContainingInjectionPointSet(this.classesContainingInjectionPointsSet);
        annotationDatabase.fillBindableClasses(this.bindableClassesSet);
    }
}
