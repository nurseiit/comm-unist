package com.google.inject.internal;

import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

final class ConstructionContext<T> {
    boolean constructing;
    T currentReference;
    List<DelegatingInvocationHandler<T>> invocationHandlers;

    ConstructionContext() {
    }

    public T getCurrentReference() {
        return this.currentReference;
    }

    public void removeCurrentReference() {
        this.currentReference = null;
    }

    public void setCurrentReference(T t) {
        this.currentReference = t;
    }

    public boolean isConstructing() {
        return this.constructing;
    }

    public void startConstruction() {
        this.constructing = true;
    }

    public void finishConstruction() {
        this.constructing = false;
        this.invocationHandlers = null;
    }

    public Object createProxy(Errors errors, Class<?> cls) throws ErrorsException {
        if (cls.isInterface()) {
            if (this.invocationHandlers == null) {
                this.invocationHandlers = new ArrayList();
            }
            DelegatingInvocationHandler delegatingInvocationHandler = new DelegatingInvocationHandler();
            this.invocationHandlers.add(delegatingInvocationHandler);
            return cls.cast(Proxy.newProxyInstance(BytecodeGen.getClassLoader(cls), new Class[]{cls, CircularDependencyProxy.class}, delegatingInvocationHandler));
        }
        throw errors.cannotSatisfyCircularDependency(cls).toException();
    }

    public void setProxyDelegates(T t) {
        if (this.invocationHandlers != null) {
            for (DelegatingInvocationHandler delegate : this.invocationHandlers) {
                delegate.setDelegate(t);
            }
        }
    }
}
