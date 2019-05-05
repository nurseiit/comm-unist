package com.google.inject.spi;

import com.google.inject.Binding;
import com.google.inject.Key;
import java.util.Set;

public interface ConvertedConstantBinding<T> extends Binding<T>, HasDependencies {
    Set<Dependency<?>> getDependencies();

    Key<String> getSourceKey();

    TypeConverterBinding getTypeConverterBinding();

    T getValue();
}
