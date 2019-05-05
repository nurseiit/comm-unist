package com.google.inject.spi;

import com.google.inject.Binding;
import java.util.List;

public interface ProvisionListener {

    public static abstract class ProvisionInvocation<T> {
        public abstract Binding<T> getBinding();

        public abstract List<DependencyAndSource> getDependencyChain();

        public abstract T provision();
    }

    <T> void onProvision(ProvisionInvocation<T> provisionInvocation);
}
