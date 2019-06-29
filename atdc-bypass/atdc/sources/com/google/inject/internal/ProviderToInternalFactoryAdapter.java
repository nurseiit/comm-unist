package com.google.inject.internal;

import com.google.inject.Provider;
import com.google.inject.ProvisionException;

final class ProviderToInternalFactoryAdapter<T> implements Provider<T> {
    private final InjectorImpl injector;
    private final InternalFactory<? extends T> internalFactory;

    public ProviderToInternalFactoryAdapter(InjectorImpl injectorImpl, InternalFactory<? extends T> internalFactory) {
        this.injector = injectorImpl;
        this.internalFactory = internalFactory;
    }

    public T get() {
        final Errors errors = new Errors();
        try {
            Object callInContext = this.injector.callInContext(new ContextualCallable<T>() {
                public T call(InternalContext internalContext) throws ErrorsException {
                    return ProviderToInternalFactoryAdapter.this.internalFactory.get(errors, internalContext, internalContext.getDependency(), true);
                }
            });
            errors.throwIfNewErrors(0);
            return callInContext;
        } catch (ErrorsException e) {
            throw new ProvisionException(errors.merge(e.getErrors()).getMessages());
        }
    }

    public String toString() {
        return this.internalFactory.toString();
    }
}
