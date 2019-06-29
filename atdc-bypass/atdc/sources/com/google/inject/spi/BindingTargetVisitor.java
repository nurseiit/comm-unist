package com.google.inject.spi;

public interface BindingTargetVisitor<T, V> {
    V visit(ConstructorBinding<? extends T> constructorBinding);

    V visit(ConvertedConstantBinding<? extends T> convertedConstantBinding);

    V visit(ExposedBinding<? extends T> exposedBinding);

    V visit(InstanceBinding<? extends T> instanceBinding);

    V visit(LinkedKeyBinding<? extends T> linkedKeyBinding);

    V visit(ProviderBinding<? extends T> providerBinding);

    V visit(ProviderInstanceBinding<? extends T> providerInstanceBinding);

    V visit(ProviderKeyBinding<? extends T> providerKeyBinding);

    V visit(UntargettedBinding<? extends T> untargettedBinding);
}
