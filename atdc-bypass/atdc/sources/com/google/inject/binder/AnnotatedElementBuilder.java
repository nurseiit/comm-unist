package com.google.inject.binder;

import java.lang.annotation.Annotation;

public interface AnnotatedElementBuilder {
    void annotatedWith(Class<? extends Annotation> cls);

    void annotatedWith(Annotation annotation);
}
