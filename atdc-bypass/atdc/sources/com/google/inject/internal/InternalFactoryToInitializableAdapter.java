package com.google.inject.internal;

import com.google.inject.spi.Dependency;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Preconditions;

final class InternalFactoryToInitializableAdapter<T> extends ProviderInternalFactory<T> {
    private final Initializable<? extends Provider<? extends T>> initializable;
    private final ProvisionListenerStackCallback<T> provisionCallback;

    public InternalFactoryToInitializableAdapter(Initializable<? extends Provider<? extends T>> initializable, Object obj, boolean z, ProvisionListenerStackCallback<T> provisionListenerStackCallback) {
        super(obj, z);
        this.provisionCallback = (ProvisionListenerStackCallback) Preconditions.checkNotNull(provisionListenerStackCallback, "provisionCallback");
        this.initializable = (Initializable) Preconditions.checkNotNull(initializable, "provider");
    }

    public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
        return circularGet((Provider) this.initializable.get(errors), errors, internalContext, dependency, z, this.provisionCallback);
    }

    /* Access modifiers changed, original: protected */
    public T provision(Provider<? extends T> provider, Errors errors, Dependency<?> dependency, ConstructionContext<T> constructionContext) throws ErrorsException {
        try {
            return super.provision(provider, errors, dependency, constructionContext);
        } catch (RuntimeException e) {
            throw errors.withSource(this.source).errorInProvider(e).toException();
        }
    }

    public String toString() {
        return this.initializable.toString();
    }
}
