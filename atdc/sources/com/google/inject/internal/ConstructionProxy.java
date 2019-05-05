package com.google.inject.internal;

import com.google.inject.spi.InjectionPoint;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

interface ConstructionProxy<T> {
    Constructor<T> getConstructor();

    InjectionPoint getInjectionPoint();

    T newInstance(Object... objArr) throws InvocationTargetException;
}
