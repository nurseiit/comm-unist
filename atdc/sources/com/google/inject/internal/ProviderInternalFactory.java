package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.internal.ProvisionListenerStackCallback.ProvisionCallback;
import com.google.inject.spi.Dependency;
import javax.inject.Provider;
import org.roboguice.shaded.goole.common.base.Preconditions;

abstract class ProviderInternalFactory<T> implements InternalFactory<T> {
    private final boolean allowProxy;
    protected final Object source;

    ProviderInternalFactory(Object obj, boolean z) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        this.allowProxy = z;
    }

    /* Access modifiers changed, original: protected */
    public T circularGet(Provider<? extends T> provider, Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z, ProvisionListenerStackCallback<T> provisionListenerStackCallback) throws ErrorsException {
        Class rawType = dependency.getKey().getTypeLiteral().getRawType();
        ConstructionContext constructionContext = internalContext.getConstructionContext(this);
        if (!constructionContext.isConstructing()) {
            constructionContext.startConstruction();
            try {
                T provision;
                if (provisionListenerStackCallback.hasListeners()) {
                    final Provider<? extends T> provider2 = provider;
                    final Errors errors2 = errors;
                    final Dependency<?> dependency2 = dependency;
                    final ConstructionContext constructionContext2 = constructionContext;
                    provision = provisionListenerStackCallback.provision(errors, internalContext, new ProvisionCallback<T>() {
                        public T call() throws ErrorsException {
                            return ProviderInternalFactory.this.provision(provider2, errors2, dependency2, constructionContext2);
                        }
                    });
                } else {
                    provision = provision(provider, errors, dependency, constructionContext);
                }
                constructionContext.removeCurrentReference();
                constructionContext.finishConstruction();
                return provision;
            } catch (Throwable th) {
                constructionContext.removeCurrentReference();
                constructionContext.finishConstruction();
            }
        } else if (this.allowProxy) {
            return constructionContext.createProxy(errors, rawType);
        } else {
            throw errors.circularProxiesDisabled(rawType).toException();
        }
    }

    /* Access modifiers changed, original: protected */
    public T provision(Provider<? extends T> provider, Errors errors, Dependency<?> dependency, ConstructionContext<T> constructionContext) throws ErrorsException {
        Object checkForNull = errors.checkForNull(provider.get(), this.source, dependency);
        constructionContext.setProxyDelegates(checkForNull);
        return checkForNull;
    }
}
