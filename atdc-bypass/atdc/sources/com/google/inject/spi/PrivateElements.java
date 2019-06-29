package com.google.inject.spi;

import com.google.inject.Injector;
import com.google.inject.Key;
import java.util.List;
import java.util.Set;

public interface PrivateElements extends Element {
    List<Element> getElements();

    Set<Key<?>> getExposedKeys();

    Object getExposedSource(Key<?> key);

    Injector getInjector();
}
