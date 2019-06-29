package com.google.inject.spi;

import com.google.inject.Binder;

public interface Element {
    <T> T acceptVisitor(ElementVisitor<T> elementVisitor);

    void applyTo(Binder binder);

    Object getSource();
}
