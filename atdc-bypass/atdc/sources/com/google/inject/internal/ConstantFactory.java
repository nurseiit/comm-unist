package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.spi.Dependency;
import org.roboguice.shaded.goole.common.base.Objects;

final class ConstantFactory<T> implements InternalFactory<T> {
    private final Initializable<T> initializable;

    public ConstantFactory(Initializable<T> initializable) {
        this.initializable = initializable;
    }

    public T get(Errors errors, InternalContext internalContext, Dependency dependency, boolean z) throws ErrorsException {
        return this.initializable.get(errors);
    }

    public String toString() {
        return Objects.toStringHelper(ConstantFactory.class).add(Param.VALUE, this.initializable).toString();
    }
}
