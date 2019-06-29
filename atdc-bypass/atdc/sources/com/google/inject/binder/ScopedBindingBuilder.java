package com.google.inject.binder;

import com.google.inject.Scope;
import java.lang.annotation.Annotation;

public interface ScopedBindingBuilder {
    void asEagerSingleton();

    void in(Scope scope);

    void in(Class<? extends Annotation> cls);
}
