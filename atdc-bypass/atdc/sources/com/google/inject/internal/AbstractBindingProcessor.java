package com.google.inject.internal;

import com.google.inject.AbstractModule;
import com.google.inject.Binder;
import com.google.inject.Binding;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Module;
import com.google.inject.Provider;
import com.google.inject.Scope;
import com.google.inject.Stage;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.DefaultBindingTargetVisitor;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

abstract class AbstractBindingProcessor extends AbstractProcessor {
    private static final Set<Class<?>> FORBIDDEN_TYPES = ImmutableSet.of(AbstractModule.class, Binder.class, Binding.class, Injector.class, Key.class, MembersInjector.class, Module.class, Provider.class, Scope.class, Stage.class, TypeLiteral.class);
    protected final ProcessedBindingData bindingData;

    abstract class Processor<T, V> extends DefaultBindingTargetVisitor<T, V> {
        final Key<T> key;
        final Class<? super T> rawType = this.key.getTypeLiteral().getRawType();
        Scoping scoping;
        final Object source;

        Processor(BindingImpl<T> bindingImpl) {
            this.source = bindingImpl.getSource();
            this.key = bindingImpl.getKey();
            this.scoping = bindingImpl.getScoping();
        }

        /* Access modifiers changed, original: protected */
        public void prepareBinding() {
            AbstractBindingProcessor.this.validateKey(this.source, this.key);
            this.scoping = Scoping.makeInjectable(this.scoping, AbstractBindingProcessor.this.injector, AbstractBindingProcessor.this.errors);
        }

        /* Access modifiers changed, original: protected */
        public void scheduleInitialization(final BindingImpl<?> bindingImpl) {
            AbstractBindingProcessor.this.bindingData.addUninitializedBinding(new Runnable() {
                public void run() {
                    try {
                        bindingImpl.getInjector().initializeBinding(bindingImpl, AbstractBindingProcessor.this.errors.withSource(Processor.this.source));
                    } catch (ErrorsException e) {
                        AbstractBindingProcessor.this.errors.merge(e.getErrors());
                    }
                }
            });
        }
    }

    AbstractBindingProcessor(Errors errors, ProcessedBindingData processedBindingData) {
        super(errors);
        this.bindingData = processedBindingData;
    }

    /* Access modifiers changed, original: protected */
    public <T> UntargettedBindingImpl<T> invalidBinding(InjectorImpl injectorImpl, Key<T> key, Object obj) {
        return new UntargettedBindingImpl(injectorImpl, (Key) key, obj);
    }

    /* Access modifiers changed, original: protected */
    public void putBinding(BindingImpl<?> bindingImpl) {
        Key key = bindingImpl.getKey();
        Class rawType = key.getTypeLiteral().getRawType();
        if (FORBIDDEN_TYPES.contains(rawType)) {
            this.errors.cannotBindToGuiceType(rawType.getSimpleName());
            return;
        }
        BindingImpl existingBinding = this.injector.getExistingBinding(key);
        if (existingBinding != null) {
            if (this.injector.state.getExplicitBinding(key) != null) {
                try {
                    if (!isOkayDuplicate(existingBinding, bindingImpl, this.injector.state)) {
                        this.errors.bindingAlreadySet(key, existingBinding.getSource());
                        return;
                    }
                } catch (Throwable th) {
                    this.errors.errorCheckingDuplicateBinding(key, existingBinding.getSource(), th);
                    return;
                }
            }
            this.errors.jitBindingAlreadySet(key);
            return;
        }
        this.injector.state.parent().blacklist(key, this.injector.state, bindingImpl.getSource());
        this.injector.state.putBinding(key, bindingImpl);
    }

    private boolean isOkayDuplicate(BindingImpl<?> bindingImpl, BindingImpl<?> bindingImpl2, State state) {
        boolean z = false;
        if (bindingImpl instanceof ExposedBindingImpl) {
            if (((InjectorImpl) ((ExposedBindingImpl) bindingImpl).getPrivateElements().getInjector()) == bindingImpl2.getInjector()) {
                z = true;
            }
            return z;
        }
        BindingImpl bindingImpl3 = (BindingImpl) state.getExplicitBindingsThisLevel().get(bindingImpl2.getKey());
        if (bindingImpl3 == null) {
            return false;
        }
        return bindingImpl3.equals(bindingImpl2);
    }

    private <T> void validateKey(Object obj, Key<T> key) {
        Annotations.checkForMisplacedScopeAnnotations(key.getTypeLiteral().getRawType(), obj, this.errors);
    }
}
