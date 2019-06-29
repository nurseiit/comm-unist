package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.spi.Dependency;
import org.roboguice.shaded.goole.common.base.Preconditions;

class ProvidedByInternalFactory<T> extends ProviderInternalFactory<T> implements DelayedInitialize {
    private BindingImpl<? extends Provider<T>> providerBinding;
    private final Key<? extends Provider<T>> providerKey;
    private final Class<? extends Provider<?>> providerType;
    private ProvisionListenerStackCallback<T> provisionCallback;
    private final Class<?> rawType;

    ProvidedByInternalFactory(Class<?> cls, Class<? extends Provider<?>> cls2, Key<? extends Provider<T>> key, boolean z) {
        super(key, z);
        this.rawType = cls;
        this.providerType = cls2;
        this.providerKey = key;
    }

    /* Access modifiers changed, original: 0000 */
    public void setProvisionListenerCallback(ProvisionListenerStackCallback<T> provisionListenerStackCallback) {
        this.provisionCallback = provisionListenerStackCallback;
    }

    public void initialize(InjectorImpl injectorImpl, Errors errors) throws ErrorsException {
        this.providerBinding = injectorImpl.getBindingOrThrow(this.providerKey, errors, JitLimitation.NEW_OR_EXISTING_JIT);
    }

    public T get(Errors errors, InternalContext internalContext, Dependency dependency, boolean z) throws ErrorsException {
        Preconditions.checkState(this.providerBinding != null, "not initialized");
        internalContext.pushState(this.providerKey, this.providerBinding.getSource());
        try {
            Errors withSource = errors.withSource(this.providerKey);
            T circularGet = circularGet((Provider) this.providerBinding.getInternalFactory().get(withSource, internalContext, dependency, true), withSource, internalContext, dependency, z, this.provisionCallback);
            return circularGet;
        } finally {
            internalContext.popState();
        }
    }

    /* Access modifiers changed, original: protected */
    public T provision(javax.inject.Provider<? extends T> provider, Errors errors, Dependency<?> dependency, ConstructionContext<T> constructionContext) throws ErrorsException {
        try {
            Object provision = super.provision(provider, errors, dependency, constructionContext);
            if (provision == null || this.rawType.isInstance(provision)) {
                return provision;
            }
            throw errors.subtypeNotProvided(this.providerType, this.rawType).toException();
        } catch (RuntimeException e) {
            throw errors.errorInProvider(e).toException();
        }
    }
}
