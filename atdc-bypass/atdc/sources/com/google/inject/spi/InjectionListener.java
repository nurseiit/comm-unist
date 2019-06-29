package com.google.inject.spi;

public interface InjectionListener<I> {
    void afterInjection(I i);
}
