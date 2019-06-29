package com.google.inject.internal;

import com.google.inject.internal.ProvisionListenerStackCallback.ProvisionCallback;
import com.google.inject.spi.InjectionPoint;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

final class ConstructorInjector<T> {
    private final ConstructionProxy<T> constructionProxy;
    private final ImmutableSet<InjectionPoint> injectableMembers;
    private final MembersInjectorImpl<T> membersInjector;
    private final SingleParameterInjector<?>[] parameterInjectors;

    ConstructorInjector(Set<InjectionPoint> set, ConstructionProxy<T> constructionProxy, SingleParameterInjector<?>[] singleParameterInjectorArr, MembersInjectorImpl<T> membersInjectorImpl) {
        this.injectableMembers = ImmutableSet.copyOf((Collection) set);
        this.constructionProxy = constructionProxy;
        this.parameterInjectors = singleParameterInjectorArr;
        this.membersInjector = membersInjectorImpl;
    }

    public ImmutableSet<InjectionPoint> getInjectableMembers() {
        return this.injectableMembers;
    }

    /* Access modifiers changed, original: 0000 */
    public ConstructionProxy<T> getConstructionProxy() {
        return this.constructionProxy;
    }

    /* Access modifiers changed, original: 0000 */
    public Object construct(final Errors errors, final InternalContext internalContext, Class<?> cls, boolean z, ProvisionListenerStackCallback<T> provisionListenerStackCallback) throws ErrorsException {
        final ConstructionContext constructionContext = internalContext.getConstructionContext(this);
        if (!constructionContext.isConstructing()) {
            Object currentReference = constructionContext.getCurrentReference();
            if (currentReference != null) {
                return currentReference;
            }
            constructionContext.startConstruction();
            try {
                Object provision;
                if (provisionListenerStackCallback.hasListeners()) {
                    provision = provisionListenerStackCallback.provision(errors, internalContext, new ProvisionCallback<T>() {
                        public T call() throws ErrorsException {
                            return ConstructorInjector.this.provision(errors, internalContext, constructionContext);
                        }
                    });
                    constructionContext.finishConstruction();
                    return provision;
                }
                provision = provision(errors, internalContext, constructionContext);
                return provision;
            } finally {
                constructionContext.finishConstruction();
            }
        } else if (z) {
            return constructionContext.createProxy(errors, cls);
        } else {
            throw errors.circularProxiesDisabled(cls).toException();
        }
    }

    private T provision(Errors errors, InternalContext internalContext, ConstructionContext<T> constructionContext) throws ErrorsException {
        try {
            Object newInstance = this.constructionProxy.newInstance(SingleParameterInjector.getAll(errors, internalContext, this.parameterInjectors));
            constructionContext.setProxyDelegates(newInstance);
            constructionContext.finishConstruction();
            constructionContext.setCurrentReference(newInstance);
            this.membersInjector.injectMembers(newInstance, errors, internalContext, false);
            this.membersInjector.notifyListeners(newInstance, errors);
            constructionContext.removeCurrentReference();
            return newInstance;
        } catch (InvocationTargetException e) {
            Throwable e2 = e;
            try {
                if (e2.getCause() != null) {
                    e2 = e2.getCause();
                }
                throw errors.withSource(this.constructionProxy.getInjectionPoint()).errorInjectingConstructor(e2).toException();
            } catch (Throwable th) {
                constructionContext.removeCurrentReference();
            }
        } catch (Throwable th2) {
            constructionContext.finishConstruction();
        }
    }
}
