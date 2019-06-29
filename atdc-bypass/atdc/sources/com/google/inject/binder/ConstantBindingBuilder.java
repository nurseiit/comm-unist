package com.google.inject.binder;

public interface ConstantBindingBuilder {
    void to(byte b);

    void to(char c);

    void to(double d);

    void to(float f);

    void to(int i);

    void to(long j);

    void to(Class<?> cls);

    <E extends Enum<E>> void to(E e);

    void to(String str);

    void to(short s);

    void to(boolean z);
}
