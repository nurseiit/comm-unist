package com.google.inject.internal;

interface ContextualCallable<T> {
    T call(InternalContext internalContext) throws ErrorsException;
}
