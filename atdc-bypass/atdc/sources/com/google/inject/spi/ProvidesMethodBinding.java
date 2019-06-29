package com.google.inject.spi;

import com.google.inject.Key;
import java.lang.reflect.Method;

public interface ProvidesMethodBinding<T> extends HasDependencies {
    Object getEnclosingInstance();

    Key<T> getKey();

    Method getMethod();
}
