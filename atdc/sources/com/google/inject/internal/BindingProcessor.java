package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.spi.ConstructorBinding;
import com.google.inject.spi.ConvertedConstantBinding;
import com.google.inject.spi.ExposedBinding;
import com.google.inject.spi.InstanceBinding;
import com.google.inject.spi.LinkedKeyBinding;
import com.google.inject.spi.PrivateElements;
import com.google.inject.spi.ProviderBinding;
import com.google.inject.spi.ProviderInstanceBinding;
import com.google.inject.spi.ProviderKeyBinding;
import com.google.inject.spi.UntargettedBinding;
import java.util.Set;

final class BindingProcessor extends AbstractBindingProcessor {
    private final Initializer initializer;

    BindingProcessor(Errors errors, Initializer initializer, ProcessedBindingData processedBindingData) {
        super(errors, processedBindingData);
        this.initializer = initializer;
    }

    public <T> Boolean visit(Binding<T> binding) {
        Class rawType = binding.getKey().getTypeLiteral().getRawType();
        if (Void.class.equals(rawType)) {
            if ((binding instanceof ProviderInstanceBinding) && (((ProviderInstanceBinding) binding).getUserSuppliedProvider() instanceof ProviderMethod)) {
                this.errors.voidProviderMethod();
            } else {
                this.errors.missingConstantValues();
            }
            return Boolean.valueOf(true);
        } else if (rawType != Provider.class) {
            return (Boolean) binding.acceptTargetVisitor(new Processor<T, Boolean>((BindingImpl) binding) {
                public Boolean visit(ConstructorBinding<? extends T> constructorBinding) {
                    prepareBinding();
                    try {
                        ConstructorBindingImpl create = ConstructorBindingImpl.create(BindingProcessor.this.injector, this.key, constructorBinding.getConstructor(), this.source, this.scoping, BindingProcessor.this.errors, false, false);
                        scheduleInitialization(create);
                        BindingProcessor.this.putBinding(create);
                    } catch (ErrorsException e) {
                        BindingProcessor.this.errors.merge(e.getErrors());
                        BindingProcessor.this.putBinding(BindingProcessor.this.invalidBinding(BindingProcessor.this.injector, this.key, this.source));
                    }
                    return Boolean.valueOf(true);
                }

                public Boolean visit(InstanceBinding<? extends T> instanceBinding) {
                    prepareBinding();
                    Set injectionPoints = instanceBinding.getInjectionPoints();
                    Object instance = instanceBinding.getInstance();
                    Set set = injectionPoints;
                    BindingProcessor.this.putBinding(new InstanceBindingImpl(BindingProcessor.this.injector, this.key, this.source, Scoping.scope(this.key, BindingProcessor.this.injector, new ConstantFactory(BindingProcessor.this.initializer.requestInjection(BindingProcessor.this.injector, instance, instanceBinding, this.source, set)), this.source, this.scoping), set, instance));
                    return Boolean.valueOf(true);
                }

                public Boolean visit(ProviderInstanceBinding<? extends T> providerInstanceBinding) {
                    prepareBinding();
                    javax.inject.Provider userSuppliedProvider = providerInstanceBinding.getUserSuppliedProvider();
                    Set injectionPoints = providerInstanceBinding.getInjectionPoints();
                    BindingProcessor.this.putBinding(new ProviderInstanceBindingImpl(BindingProcessor.this.injector, this.key, this.source, Scoping.scope(this.key, BindingProcessor.this.injector, new InternalFactoryToInitializableAdapter(BindingProcessor.this.initializer.requestInjection(BindingProcessor.this.injector, userSuppliedProvider, null, this.source, injectionPoints), this.source, BindingProcessor.this.injector.options.disableCircularProxies ^ 1, BindingProcessor.this.injector.provisionListenerStore.get(providerInstanceBinding)), this.source, this.scoping), this.scoping, userSuppliedProvider, injectionPoints));
                    return Boolean.valueOf(true);
                }

                public Boolean visit(ProviderKeyBinding<? extends T> providerKeyBinding) {
                    prepareBinding();
                    Key providerKey = providerKeyBinding.getProviderKey();
                    BoundProviderFactory boundProviderFactory = new BoundProviderFactory(BindingProcessor.this.injector, providerKey, this.source, BindingProcessor.this.injector.options.disableCircularProxies ^ 1, BindingProcessor.this.injector.provisionListenerStore.get(providerKeyBinding));
                    BindingProcessor.this.bindingData.addCreationListener(boundProviderFactory);
                    BindingProcessor.this.putBinding(new LinkedProviderBindingImpl(BindingProcessor.this.injector, this.key, this.source, Scoping.scope(this.key, BindingProcessor.this.injector, boundProviderFactory, this.source, this.scoping), this.scoping, providerKey));
                    return Boolean.valueOf(true);
                }

                public Boolean visit(LinkedKeyBinding<? extends T> linkedKeyBinding) {
                    prepareBinding();
                    Key linkedKey = linkedKeyBinding.getLinkedKey();
                    if (this.key.equals(linkedKey)) {
                        BindingProcessor.this.errors.recursiveBinding();
                    }
                    FactoryProxy factoryProxy = new FactoryProxy(BindingProcessor.this.injector, this.key, linkedKey, this.source);
                    BindingProcessor.this.bindingData.addCreationListener(factoryProxy);
                    BindingProcessor.this.putBinding(new LinkedBindingImpl(BindingProcessor.this.injector, this.key, this.source, Scoping.scope(this.key, BindingProcessor.this.injector, factoryProxy, this.source, this.scoping), this.scoping, linkedKey));
                    return Boolean.valueOf(true);
                }

                public Boolean visit(UntargettedBinding<? extends T> untargettedBinding) {
                    return Boolean.valueOf(false);
                }

                public Boolean visit(ExposedBinding<? extends T> exposedBinding) {
                    throw new IllegalArgumentException("Cannot apply a non-module element");
                }

                public Boolean visit(ConvertedConstantBinding<? extends T> convertedConstantBinding) {
                    throw new IllegalArgumentException("Cannot apply a non-module element");
                }

                public Boolean visit(ProviderBinding<? extends T> providerBinding) {
                    throw new IllegalArgumentException("Cannot apply a non-module element");
                }

                /* Access modifiers changed, original: protected */
                public Boolean visitOther(Binding<? extends T> binding) {
                    throw new IllegalStateException("BindingProcessor should override all visitations");
                }
            });
        } else {
            this.errors.bindingToProvider();
            return Boolean.valueOf(true);
        }
    }

    public Boolean visit(PrivateElements privateElements) {
        for (Key bindExposed : privateElements.getExposedKeys()) {
            bindExposed(privateElements, bindExposed);
        }
        return Boolean.valueOf(false);
    }

    private <T> void bindExposed(PrivateElements privateElements, Key<T> key) {
        ExposedKeyFactory exposedKeyFactory = new ExposedKeyFactory(key, privateElements);
        this.bindingData.addCreationListener(exposedKeyFactory);
        putBinding(new ExposedBindingImpl(this.injector, privateElements.getExposedSource(key), key, exposedKeyFactory, privateElements));
    }
}
