package com.google.inject.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class DelegatingInvocationHandler<T> implements InvocationHandler {
    private T delegate;

    DelegatingInvocationHandler() {
    }

    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (this.delegate == null) {
            throw new IllegalStateException("This is a proxy used to support circular references. The object we're proxying is not constructed yet. Please wait until after injection has completed to use this object.");
        }
        try {
            return method.invoke(this.delegate, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw e3.getTargetException();
        }
    }

    public T getDelegate() {
        return this.delegate;
    }

    /* Access modifiers changed, original: 0000 */
    public void setDelegate(T t) {
        this.delegate = t;
    }
}
