package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;

interface Lookups {
    <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral);

    <T> Provider<T> getProvider(Key<T> key);
}
