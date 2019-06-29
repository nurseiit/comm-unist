package com.google.inject.matcher;

public interface Matcher<T> {
    Matcher<T> and(Matcher<? super T> matcher);

    boolean matches(T t);

    Matcher<T> or(Matcher<? super T> matcher);
}
