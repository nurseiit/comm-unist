package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.util.Types;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class ProviderLookup<T> implements Element {
    private Provider<T> delegate;
    private final Key<T> key;
    private final Object source;

    public ProviderLookup(Object obj, Key<T> key) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        this.key = (Key) Preconditions.checkNotNull(key, "key");
    }

    public Object getSource() {
        return this.source;
    }

    public Key<T> getKey() {
        return this.key;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void initializeDelegate(Provider<T> provider) {
        Preconditions.checkState(this.delegate == null, "delegate already initialized");
        this.delegate = (Provider) Preconditions.checkNotNull(provider, "delegate");
    }

    public void applyTo(Binder binder) {
        initializeDelegate(binder.withSource(getSource()).getProvider(this.key));
    }

    public Provider<T> getDelegate() {
        return this.delegate;
    }

    public Provider<T> getProvider() {
        return new ProviderWithDependencies<T>() {
            public T get() {
                Preconditions.checkState(ProviderLookup.this.delegate != null, "This Provider cannot be used until the Injector has been created.");
                return ProviderLookup.this.delegate.get();
            }

            public Set<Dependency<?>> getDependencies() {
                return ImmutableSet.of(Dependency.get(ProviderLookup.this.key.ofType(Types.providerOf(ProviderLookup.this.key.getTypeLiteral().getType()))));
            }

            public String toString() {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Provider<");
                stringBuilder.append(ProviderLookup.this.key.getTypeLiteral());
                stringBuilder.append(">");
                return stringBuilder.toString();
            }
        };
    }
}
