package com.google.inject.spi;

import com.google.inject.Binding;

public abstract class DefaultBindingTargetVisitor<T, V> implements BindingTargetVisitor<T, V> {
    /* Access modifiers changed, original: protected */
    public V visitOther(Binding<? extends T> binding) {
        return null;
    }

    public V visit(InstanceBinding<? extends T> instanceBinding) {
        return visitOther(instanceBinding);
    }

    public V visit(ProviderInstanceBinding<? extends T> providerInstanceBinding) {
        return visitOther(providerInstanceBinding);
    }

    public V visit(ProviderKeyBinding<? extends T> providerKeyBinding) {
        return visitOther(providerKeyBinding);
    }

    public V visit(LinkedKeyBinding<? extends T> linkedKeyBinding) {
        return visitOther(linkedKeyBinding);
    }

    public V visit(ExposedBinding<? extends T> exposedBinding) {
        return visitOther(exposedBinding);
    }

    public V visit(UntargettedBinding<? extends T> untargettedBinding) {
        return visitOther(untargettedBinding);
    }

    public V visit(ConstructorBinding<? extends T> constructorBinding) {
        return visitOther(constructorBinding);
    }

    public V visit(ConvertedConstantBinding<? extends T> convertedConstantBinding) {
        return visitOther(convertedConstantBinding);
    }

    public V visit(ProviderBinding<? extends T> providerBinding) {
        return visitOther(providerBinding);
    }
}
