package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.PrivateElements;

final class ExposedKeyFactory<T> implements InternalFactory<T>, CreationListener {
    private BindingImpl<T> delegate;
    private final Key<T> key;
    private final PrivateElements privateElements;

    ExposedKeyFactory(Key<T> key, PrivateElements privateElements) {
        this.key = key;
        this.privateElements = privateElements;
    }

    public void notify(Errors errors) {
        BindingImpl explicitBinding = ((InjectorImpl) this.privateElements.getInjector()).state.getExplicitBinding(this.key);
        if (explicitBinding.getInternalFactory() == this) {
            errors.withSource(explicitBinding.getSource()).exposedButNotBound(this.key);
        } else {
            this.delegate = explicitBinding;
        }
    }

    public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
        return this.delegate.getInternalFactory().get(errors, internalContext, dependency, z);
    }
}
