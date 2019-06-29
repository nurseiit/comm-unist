package com.google.inject.spi;

import com.google.inject.Binding;
import com.google.inject.Provider;
import java.util.Set;

public interface ProviderInstanceBinding<T> extends Binding<T>, HasDependencies {
    Set<InjectionPoint> getInjectionPoints();

    @Deprecated
    Provider<? extends T> getProviderInstance();

    javax.inject.Provider<? extends T> getUserSuppliedProvider();
}
