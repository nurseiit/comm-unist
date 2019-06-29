package com.google.inject.spi;

import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;

public interface TypeEncounter<I> {
    void addError(Message message);

    void addError(String str, Object... objArr);

    void addError(Throwable th);

    <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral);

    <T> MembersInjector<T> getMembersInjector(Class<T> cls);

    <T> Provider<T> getProvider(Key<T> key);

    <T> Provider<T> getProvider(Class<T> cls);

    void register(MembersInjector<? super I> membersInjector);

    void register(InjectionListener<? super I> injectionListener);
}
