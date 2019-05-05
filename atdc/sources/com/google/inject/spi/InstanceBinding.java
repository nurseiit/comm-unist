package com.google.inject.spi;

import com.google.inject.Binding;
import java.util.Set;

public interface InstanceBinding<T> extends Binding<T>, HasDependencies {
    Set<InjectionPoint> getInjectionPoints();

    T getInstance();
}
