package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Provider;
import com.google.inject.spi.Dependency;
import org.roboguice.shaded.goole.common.base.Preconditions;

final class InternalFactoryToProviderAdapter<T> implements InternalFactory<T> {
    private final Provider<? extends T> provider;
    private final Object source;

    public InternalFactoryToProviderAdapter(Provider<? extends T> provider, Object obj) {
        this.provider = (Provider) Preconditions.checkNotNull(provider, "provider");
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
    }

    public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
        try {
            return errors.checkForNull(this.provider.get(), this.source, dependency);
        } catch (RuntimeException e) {
            throw errors.withSource(this.source).errorInProvider(e).toException();
        }
    }

    public String toString() {
        return this.provider.toString();
    }
}
