package com.google.inject.spi;

import com.google.inject.Scope;
import java.lang.annotation.Annotation;

public interface BindingScopingVisitor<V> {
    V visitEagerSingleton();

    V visitNoScoping();

    V visitScope(Scope scope);

    V visitScopeAnnotation(Class<? extends Annotation> cls);
}
