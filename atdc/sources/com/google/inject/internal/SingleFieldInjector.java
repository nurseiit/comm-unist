package com.google.inject.internal;

import com.google.inject.spi.Dependency;
import com.google.inject.spi.InjectionPoint;
import java.lang.reflect.Field;

final class SingleFieldInjector implements SingleMemberInjector {
    final BindingImpl<?> binding;
    final Dependency<?> dependency;
    final Field field;
    final InjectionPoint injectionPoint;

    public SingleFieldInjector(InjectorImpl injectorImpl, InjectionPoint injectionPoint, Errors errors) throws ErrorsException {
        this.injectionPoint = injectionPoint;
        this.field = (Field) injectionPoint.getMember();
        this.dependency = (Dependency) injectionPoint.getDependencies().get(0);
        this.field.setAccessible(true);
        this.binding = injectorImpl.getBindingOrThrow(this.dependency.getKey(), errors, JitLimitation.NO_JIT);
    }

    public InjectionPoint getInjectionPoint() {
        return this.injectionPoint;
    }

    public void inject(Errors errors, InternalContext internalContext, Object obj) {
        errors = errors.withSource(this.dependency);
        Dependency pushDependency = internalContext.pushDependency(this.dependency, this.binding.getSource());
        try {
            this.field.set(obj, this.binding.getInternalFactory().get(errors, internalContext, this.dependency, false));
        } catch (ErrorsException e) {
            errors.withSource(this.injectionPoint).merge(e.getErrors());
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (Throwable th) {
            internalContext.popStateAndSetDependency(pushDependency);
        }
        internalContext.popStateAndSetDependency(pushDependency);
    }
}
