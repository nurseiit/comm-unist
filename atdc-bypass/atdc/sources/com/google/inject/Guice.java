package com.google.inject;

import com.google.inject.internal.InternalInjectorCreator;
import java.util.Arrays;

public final class Guice {
    private static AnnotationDatabaseFinder annotationDatabaseFinder;
    private static HierarchyTraversalFilterFactory hierarchyTraversalFilterFactory = new HierarchyTraversalFilterFactory();

    private Guice() {
    }

    public static Injector createInjector(Module... moduleArr) {
        return createInjector(Arrays.asList(moduleArr));
    }

    public static Injector createInjector(Iterable<? extends Module> iterable) {
        return createInjector(Stage.DEVELOPMENT, (Iterable) iterable);
    }

    public static Injector createInjector(Stage stage, Module... moduleArr) {
        return createInjector(stage, Arrays.asList(moduleArr));
    }

    public static Injector createInjector(Stage stage, Iterable<? extends Module> iterable) {
        doSetAnnotationDatabaseFinderToModules(iterable);
        return new InternalInjectorCreator().stage(stage).addModules(iterable).build();
    }

    public static HierarchyTraversalFilter createHierarchyTraversalFilter() {
        HierarchyTraversalFilter createHierarchyTraversalFilter = hierarchyTraversalFilterFactory.createHierarchyTraversalFilter();
        if (annotationDatabaseFinder == null) {
            return createHierarchyTraversalFilter;
        }
        return new AnnotatedGuiceHierarchyTraversalFilter(annotationDatabaseFinder, createHierarchyTraversalFilter);
    }

    public static void setHierarchyTraversalFilterFactory(HierarchyTraversalFilterFactory hierarchyTraversalFilterFactory) {
        hierarchyTraversalFilterFactory = hierarchyTraversalFilterFactory;
    }

    public static void setAnnotationDatabasePackageNames(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            annotationDatabaseFinder = null;
        } else {
            annotationDatabaseFinder = new AnnotationDatabaseFinder(strArr);
        }
    }

    public static AnnotationDatabaseFinder getAnnotationDatabaseFinder() {
        return annotationDatabaseFinder;
    }

    private static void doSetAnnotationDatabaseFinderToModules(Iterable<? extends Module> iterable) {
        for (Module module : iterable) {
            if (module instanceof AbstractModule) {
                ((AbstractModule) module).setAnnotationDatabaseFinder(annotationDatabaseFinder);
            }
        }
    }
}
