package com.google.inject.internal;

import com.google.inject.spi.InjectionPoint;

interface SingleMemberInjector {
    InjectionPoint getInjectionPoint();

    void inject(Errors errors, InternalContext internalContext, Object obj);
}
