package com.google.inject;

public interface MembersInjector<T> {
    void injectMembers(T t);
}
