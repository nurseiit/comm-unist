package com.google.inject;

public interface Scope {
    <T> Provider<T> scope(Key<T> key, Provider<T> provider);

    String toString();
}
