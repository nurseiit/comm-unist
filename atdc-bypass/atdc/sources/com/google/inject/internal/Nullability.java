package com.google.inject.internal;

import java.lang.annotation.Annotation;

public class Nullability {
    private Nullability() {
    }

    public static boolean allowsNull(Annotation[] annotationArr) {
        for (Annotation annotationType : annotationArr) {
            if ("Nullable".equals(annotationType.annotationType().getSimpleName())) {
                return true;
            }
        }
        return false;
    }
}
