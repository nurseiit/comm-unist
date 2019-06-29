package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.spi.Dependency;
import org.roboguice.shaded.goole.common.base.Objects;

final class FactoryProxy<T> implements InternalFactory<T>, CreationListener {
    private final InjectorImpl injector;
    private final Key<T> key;
    private final Object source;
    private InternalFactory<? extends T> targetFactory;
    private final Key<? extends T> targetKey;

    FactoryProxy(InjectorImpl injectorImpl, Key<T> key, Key<? extends T> key2, Object obj) {
        this.injector = injectorImpl;
        this.key = key;
        this.targetKey = key2;
        this.source = obj;
    }

    public void notify(Errors errors) {
        try {
            this.targetFactory = this.injector.getInternalFactory(this.targetKey, errors.withSource(this.source), JitLimitation.NEW_OR_EXISTING_JIT);
        } catch (ErrorsException e) {
            errors.merge(e.getErrors());
        }
    }

    public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
        internalContext.pushState(this.targetKey, this.source);
        try {
            T t = this.targetFactory.get(errors.withSource(this.targetKey), internalContext, dependency, true);
            return t;
        } finally {
            internalContext.popState();
        }
    }

    public String toString() {
        return Objects.toStringHelper(FactoryProxy.class).add("key", this.key).add("provider", this.targetFactory).toString();
    }
}
