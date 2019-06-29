package com.google.inject.internal;

interface DelayedInitialize {
    void initialize(InjectorImpl injectorImpl, Errors errors) throws ErrorsException;
}
