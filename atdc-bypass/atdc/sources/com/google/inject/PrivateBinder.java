package com.google.inject;

import com.google.inject.binder.AnnotatedElementBuilder;

public interface PrivateBinder extends Binder {
    AnnotatedElementBuilder expose(TypeLiteral<?> typeLiteral);

    AnnotatedElementBuilder expose(Class<?> cls);

    void expose(Key<?> key);

    PrivateBinder skipSources(Class... clsArr);

    PrivateBinder withSource(Object obj);
}
