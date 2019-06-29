package com.google.inject.internal;

import com.google.inject.spi.InjectionPoint;

final class ConstructorInjectorStore {
    private final FailableCache<InjectionPoint, ConstructorInjector<?>> cache = new FailableCache<InjectionPoint, ConstructorInjector<?>>() {
        /* Access modifiers changed, original: protected */
        public ConstructorInjector<?> create(InjectionPoint injectionPoint, Errors errors) throws ErrorsException {
            return ConstructorInjectorStore.this.createConstructor(injectionPoint, errors);
        }
    };
    private final InjectorImpl injector;

    ConstructorInjectorStore(InjectorImpl injectorImpl) {
        this.injector = injectorImpl;
    }

    public ConstructorInjector<?> get(InjectionPoint injectionPoint, Errors errors) throws ErrorsException {
        return (ConstructorInjector) this.cache.get(injectionPoint, errors);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean remove(InjectionPoint injectionPoint) {
        return this.cache.remove(injectionPoint);
    }

    private <T> ConstructorInjector<T> createConstructor(InjectionPoint injectionPoint, Errors errors) throws ErrorsException {
        int size = errors.size();
        SingleParameterInjector[] parametersInjectors = this.injector.getParametersInjectors(injectionPoint.getDependencies(), errors);
        MembersInjectorImpl membersInjectorImpl = this.injector.membersInjectorStore.get(injectionPoint.getDeclaringType(), errors);
        DefaultConstructionProxyFactory defaultConstructionProxyFactory = new DefaultConstructionProxyFactory(injectionPoint);
        errors.throwIfNewErrors(size);
        return new ConstructorInjector(membersInjectorImpl.getInjectionPoints(), defaultConstructionProxyFactory.create(), parametersInjectors, membersInjectorImpl);
    }
}
