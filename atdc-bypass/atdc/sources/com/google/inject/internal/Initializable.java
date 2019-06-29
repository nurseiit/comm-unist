package com.google.inject.internal;

interface Initializable<T> {
    T get(Errors errors) throws ErrorsException;
}
