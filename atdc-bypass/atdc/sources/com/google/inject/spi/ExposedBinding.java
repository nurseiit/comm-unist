package com.google.inject.spi;

import com.google.inject.Binder;
import com.google.inject.Binding;

public interface ExposedBinding<T> extends Binding<T>, HasDependencies {
    void applyTo(Binder binder);

    PrivateElements getPrivateElements();
}
