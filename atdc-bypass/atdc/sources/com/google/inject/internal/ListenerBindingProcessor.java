package com.google.inject.internal;

import com.google.inject.spi.ProvisionListenerBinding;
import com.google.inject.spi.TypeListenerBinding;

final class ListenerBindingProcessor extends AbstractProcessor {
    ListenerBindingProcessor(Errors errors) {
        super(errors);
    }

    public Boolean visit(TypeListenerBinding typeListenerBinding) {
        this.injector.state.addTypeListener(typeListenerBinding);
        return Boolean.valueOf(true);
    }

    public Boolean visit(ProvisionListenerBinding provisionListenerBinding) {
        this.injector.state.addProvisionListener(provisionListenerBinding);
        return Boolean.valueOf(true);
    }
}
