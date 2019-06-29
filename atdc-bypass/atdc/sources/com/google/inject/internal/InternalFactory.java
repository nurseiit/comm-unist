package com.google.inject.internal;

import com.google.inject.spi.Dependency;

interface InternalFactory<T> {
    T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException;
}
