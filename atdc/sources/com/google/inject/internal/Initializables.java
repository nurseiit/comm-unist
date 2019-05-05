package com.google.inject.internal;

final class Initializables {
    Initializables() {
    }

    static <T> Initializable<T> of(final T t) {
        return new Initializable<T>() {
            public T get(Errors errors) throws ErrorsException {
                return t;
            }

            public String toString() {
                return String.valueOf(t);
            }
        };
    }
}
