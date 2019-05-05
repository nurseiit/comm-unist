package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.spi.Dependency;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Preconditions;

final class BoundProviderFactory<T> extends ProviderInternalFactory<T> implements CreationListener {
    private final InjectorImpl injector;
    private InternalFactory<? extends Provider<? extends T>> providerFactory;
    final Key<? extends Provider<? extends T>> providerKey;
    private final ProvisionListenerStackCallback<T> provisionCallback;

    BoundProviderFactory(InjectorImpl injectorImpl, Key<? extends Provider<? extends T>> key, Object obj, boolean z, ProvisionListenerStackCallback<T> provisionListenerStackCallback) {
        super(obj, z);
        this.provisionCallback = (ProvisionListenerStackCallback) Preconditions.checkNotNull(provisionListenerStackCallback, "provisionCallback");
        this.injector = injectorImpl;
        this.providerKey = key;
    }

    public void notify(Errors errors) {
        try {
            this.providerFactory = this.injector.getInternalFactory(this.providerKey, errors.withSource(this.source), JitLimitation.NEW_OR_EXISTING_JIT);
        } catch (ErrorsException e) {
            errors.merge(e.getErrors());
        }
    }

    public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
        internalContext.pushState(this.providerKey, this.source);
        try {
            Errors withSource = errors.withSource(this.providerKey);
            T circularGet = circularGet((Provider) this.providerFactory.get(withSource, internalContext, dependency, true), withSource, internalContext, dependency, z, this.provisionCallback);
            return circularGet;
        } finally {
            internalContext.popState();
        }
    }

    /* Access modifiers changed, original: protected */
    public T provision(Provider<? extends T> provider, Errors errors, Dependency<?> dependency, ConstructionContext<T> constructionContext) throws ErrorsException {
        try {
            return super.provision(provider, errors, dependency, constructionContext);
        } catch (RuntimeException e) {
            throw errors.errorInProvider(e).toException();
        }
    }

    public String toString() {
        return this.providerKey.toString();
    }
}
