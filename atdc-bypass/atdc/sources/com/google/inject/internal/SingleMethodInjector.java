package com.google.inject.internal;

import com.google.inject.spi.InjectionPoint;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

final class SingleMethodInjector implements SingleMemberInjector {
    private final InjectionPoint injectionPoint;
    private final MethodInvoker methodInvoker;
    private final SingleParameterInjector<?>[] parameterInjectors;

    SingleMethodInjector(InjectorImpl injectorImpl, InjectionPoint injectionPoint, Errors errors) throws ErrorsException {
        this.injectionPoint = injectionPoint;
        this.methodInvoker = createMethodInvoker((Method) injectionPoint.getMember());
        this.parameterInjectors = injectorImpl.getParametersInjectors(injectionPoint.getDependencies(), errors);
    }

    private MethodInvoker createMethodInvoker(final Method method) {
        int modifiers = method.getModifiers();
        if (!Modifier.isPrivate(modifiers)) {
            Modifier.isProtected(modifiers);
        }
        if (!(Modifier.isPublic(modifiers) && Modifier.isPublic(method.getDeclaringClass().getModifiers()))) {
            method.setAccessible(true);
        }
        return new MethodInvoker() {
            public Object invoke(Object obj, Object... objArr) throws IllegalAccessException, InvocationTargetException {
                return method.invoke(obj, objArr);
            }
        };
    }

    public InjectionPoint getInjectionPoint() {
        return this.injectionPoint;
    }

    public void inject(Errors errors, InternalContext internalContext, Object obj) {
        try {
            try {
                this.methodInvoker.invoke(obj, SingleParameterInjector.getAll(errors, internalContext, this.parameterInjectors));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                Throwable e3 = e2;
                if (e3.getCause() != null) {
                    e3 = e3.getCause();
                }
                errors.withSource(this.injectionPoint).errorInjectingMethod(e3);
            }
        } catch (ErrorsException e4) {
            errors.merge(e4.getErrors());
        }
    }
}
