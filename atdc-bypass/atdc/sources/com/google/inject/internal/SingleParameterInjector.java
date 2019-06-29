package com.google.inject.internal;

import com.google.inject.spi.Dependency;

final class SingleParameterInjector<T> {
    private static final Object[] NO_ARGUMENTS = new Object[0];
    private final BindingImpl<? extends T> binding;
    private final Dependency<T> dependency;

    SingleParameterInjector(Dependency<T> dependency, BindingImpl<? extends T> bindingImpl) {
        this.dependency = dependency;
        this.binding = bindingImpl;
    }

    private T inject(Errors errors, InternalContext internalContext) throws ErrorsException {
        Dependency pushDependency = internalContext.pushDependency(this.dependency, this.binding.getSource());
        try {
            T t = this.binding.getInternalFactory().get(errors.withSource(this.dependency), internalContext, this.dependency, false);
            return t;
        } finally {
            internalContext.popStateAndSetDependency(pushDependency);
        }
    }

    static Object[] getAll(Errors errors, InternalContext internalContext, SingleParameterInjector<?>[] singleParameterInjectorArr) throws ErrorsException {
        if (singleParameterInjectorArr == null) {
            return NO_ARGUMENTS;
        }
        int size = errors.size();
        int length = singleParameterInjectorArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            try {
                objArr[i] = singleParameterInjectorArr[i].inject(errors, internalContext);
            } catch (ErrorsException e) {
                errors.merge(e.getErrors());
            }
        }
        errors.throwIfNewErrors(size);
        return objArr;
    }
}
