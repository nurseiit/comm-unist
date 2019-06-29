package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.spi.UntargettedBinding;

class UntargettedBindingProcessor extends AbstractBindingProcessor {
    UntargettedBindingProcessor(Errors errors, ProcessedBindingData processedBindingData) {
        super(errors, processedBindingData);
    }

    public <T> Boolean visit(Binding<T> binding) {
        return (Boolean) binding.acceptTargetVisitor(new Processor<T, Boolean>((BindingImpl) binding) {
            public Boolean visit(UntargettedBinding<? extends T> untargettedBinding) {
                prepareBinding();
                if (this.key.getAnnotationType() != null) {
                    UntargettedBindingProcessor.this.errors.missingImplementation(this.key);
                    UntargettedBindingProcessor.this.putBinding(UntargettedBindingProcessor.this.invalidBinding(UntargettedBindingProcessor.this.injector, this.key, this.source));
                    return Boolean.valueOf(true);
                }
                try {
                    BindingImpl createUninitializedBinding = UntargettedBindingProcessor.this.injector.createUninitializedBinding(this.key, this.scoping, this.source, UntargettedBindingProcessor.this.errors, false);
                    scheduleInitialization(createUninitializedBinding);
                    UntargettedBindingProcessor.this.putBinding(createUninitializedBinding);
                } catch (ErrorsException e) {
                    UntargettedBindingProcessor.this.errors.merge(e.getErrors());
                    UntargettedBindingProcessor.this.putBinding(UntargettedBindingProcessor.this.invalidBinding(UntargettedBindingProcessor.this.injector, this.key, this.source));
                }
                return Boolean.valueOf(true);
            }

            /* Access modifiers changed, original: protected */
            public Boolean visitOther(Binding<? extends T> binding) {
                return Boolean.valueOf(false);
            }
        });
    }
}
