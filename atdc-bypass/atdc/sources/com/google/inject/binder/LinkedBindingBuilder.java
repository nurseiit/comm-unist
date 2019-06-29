package com.google.inject.binder;

import com.google.inject.Key;
import com.google.inject.TypeLiteral;
import java.lang.reflect.Constructor;
import javax.inject.Provider;

public interface LinkedBindingBuilder<T> extends ScopedBindingBuilder {
    ScopedBindingBuilder to(Key<? extends T> key);

    ScopedBindingBuilder to(TypeLiteral<? extends T> typeLiteral);

    ScopedBindingBuilder to(Class<? extends T> cls);

    <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor);

    <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor, TypeLiteral<? extends S> typeLiteral);

    void toInstance(T t);

    ScopedBindingBuilder toProvider(Key<? extends Provider<? extends T>> key);

    ScopedBindingBuilder toProvider(com.google.inject.Provider<? extends T> provider);

    ScopedBindingBuilder toProvider(TypeLiteral<? extends Provider<? extends T>> typeLiteral);

    ScopedBindingBuilder toProvider(Class<? extends Provider<? extends T>> cls);

    ScopedBindingBuilder toProvider(Provider<? extends T> provider);
}
