package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.ProvisionListenerStackCallback.ProvisionCallback;
import com.google.inject.spi.InjectionListener;
import com.google.inject.spi.InjectionPoint;
import java.util.Iterator;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.ImmutableSet.Builder;

final class MembersInjectorImpl<T> implements MembersInjector<T> {
    private final ImmutableSet<InjectionListener<? super T>> injectionListeners;
    private final InjectorImpl injector;
    private final ImmutableList<SingleMemberInjector> memberInjectors;
    private final TypeLiteral<T> typeLiteral;
    private final ImmutableSet<MembersInjector<? super T>> userMembersInjectors;

    MembersInjectorImpl(InjectorImpl injectorImpl, TypeLiteral<T> typeLiteral, EncounterImpl<T> encounterImpl, ImmutableList<SingleMemberInjector> immutableList) {
        this.injector = injectorImpl;
        this.typeLiteral = typeLiteral;
        this.memberInjectors = immutableList;
        this.userMembersInjectors = encounterImpl.getMembersInjectors();
        this.injectionListeners = encounterImpl.getInjectionListeners();
    }

    public ImmutableList<SingleMemberInjector> getMemberInjectors() {
        return this.memberInjectors;
    }

    public void injectMembers(T t) {
        Errors errors = new Errors(this.typeLiteral);
        try {
            injectAndNotify(t, errors, null, null, this.typeLiteral, false);
        } catch (ErrorsException e) {
            errors.merge(e.getErrors());
        }
        errors.throwProvisionExceptionIfErrorsExist();
    }

    /* Access modifiers changed, original: 0000 */
    public void injectAndNotify(T t, Errors errors, Key<T> key, ProvisionListenerStackCallback<T> provisionListenerStackCallback, Object obj, boolean z) throws ErrorsException {
        if (t != null) {
            final Key<T> key2 = key;
            final Object obj2 = obj;
            final ProvisionListenerStackCallback<T> provisionListenerStackCallback2 = provisionListenerStackCallback;
            final Errors errors2 = errors;
            final T t2 = t;
            final boolean z2 = z;
            this.injector.callInContext(new ContextualCallable<Void>() {
                public Void call(final InternalContext internalContext) throws ErrorsException {
                    internalContext.pushState(key2, obj2);
                    try {
                        if (provisionListenerStackCallback2 == null || !provisionListenerStackCallback2.hasListeners()) {
                            MembersInjectorImpl.this.injectMembers(t2, errors2, internalContext, z2);
                        } else {
                            provisionListenerStackCallback2.provision(errors2, internalContext, new ProvisionCallback<T>() {
                                public T call() {
                                    MembersInjectorImpl.this.injectMembers(t2, errors2, internalContext, z2);
                                    return t2;
                                }
                            });
                        }
                        internalContext.popState();
                        return null;
                    } catch (Throwable th) {
                        internalContext.popState();
                    }
                }
            });
            if (!z) {
                notifyListeners(t, errors);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void notifyListeners(T t, Errors errors) throws ErrorsException {
        int size = errors.size();
        Iterator it = this.injectionListeners.iterator();
        while (it.hasNext()) {
            InjectionListener injectionListener = (InjectionListener) it.next();
            try {
                injectionListener.afterInjection(t);
            } catch (RuntimeException e) {
                errors.errorNotifyingInjectionListener(injectionListener, this.typeLiteral, e);
            }
        }
        errors.throwIfNewErrors(size);
    }

    /* Access modifiers changed, original: 0000 */
    public void injectMembers(T t, Errors errors, InternalContext internalContext, boolean z) {
        int size = this.memberInjectors.size();
        for (int i = 0; i < size; i++) {
            SingleMemberInjector singleMemberInjector = (SingleMemberInjector) this.memberInjectors.get(i);
            if (!z || singleMemberInjector.getInjectionPoint().isToolable()) {
                singleMemberInjector.inject(errors, internalContext, t);
            }
        }
        if (!z) {
            Iterator it = this.userMembersInjectors.iterator();
            while (it.hasNext()) {
                MembersInjector membersInjector = (MembersInjector) it.next();
                try {
                    membersInjector.injectMembers(t);
                } catch (RuntimeException e) {
                    errors.errorInUserInjector(membersInjector, this.typeLiteral, e);
                }
            }
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("MembersInjector<");
        stringBuilder.append(this.typeLiteral);
        stringBuilder.append(">");
        return stringBuilder.toString();
    }

    public ImmutableSet<InjectionPoint> getInjectionPoints() {
        Builder builder = ImmutableSet.builder();
        Iterator it = this.memberInjectors.iterator();
        while (it.hasNext()) {
            builder.add(((SingleMemberInjector) it.next()).getInjectionPoint());
        }
        return builder.build();
    }
}
