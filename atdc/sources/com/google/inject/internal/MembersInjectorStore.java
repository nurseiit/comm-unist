package com.google.inject.internal;

import com.google.inject.ConfigurationException;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.TypeListener;
import com.google.inject.spi.TypeListenerBinding;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Sets;

final class MembersInjectorStore {
    private final FailableCache<TypeLiteral<?>, MembersInjectorImpl<?>> cache = new FailableCache<TypeLiteral<?>, MembersInjectorImpl<?>>() {
        /* Access modifiers changed, original: protected */
        public MembersInjectorImpl<?> create(TypeLiteral<?> typeLiteral, Errors errors) throws ErrorsException {
            return MembersInjectorStore.this.createWithListeners(typeLiteral, errors);
        }
    };
    private final InjectorImpl injector;
    private final ImmutableList<TypeListenerBinding> typeListenerBindings;

    MembersInjectorStore(InjectorImpl injectorImpl, List<TypeListenerBinding> list) {
        this.injector = injectorImpl;
        this.typeListenerBindings = ImmutableList.copyOf((Collection) list);
    }

    public boolean hasTypeListeners() {
        return this.typeListenerBindings.isEmpty() ^ 1;
    }

    public <T> MembersInjectorImpl<T> get(TypeLiteral<T> typeLiteral, Errors errors) throws ErrorsException {
        return (MembersInjectorImpl) this.cache.get(typeLiteral, errors);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean remove(TypeLiteral<?> typeLiteral) {
        return this.cache.remove(typeLiteral);
    }

    private <T> MembersInjectorImpl<T> createWithListeners(TypeLiteral<T> typeLiteral, Errors errors) throws ErrorsException {
        Set forInstanceMethodsAndFields;
        int size = errors.size();
        try {
            forInstanceMethodsAndFields = InjectionPoint.forInstanceMethodsAndFields((TypeLiteral) typeLiteral);
        } catch (ConfigurationException e) {
            errors.merge(e.getErrorMessages());
            forInstanceMethodsAndFields = (Set) e.getPartialValue();
        }
        ImmutableList injectors = getInjectors(forInstanceMethodsAndFields, errors);
        errors.throwIfNewErrors(size);
        EncounterImpl encounterImpl = new EncounterImpl(errors, this.injector.lookups);
        HashSet newHashSet = Sets.newHashSet();
        Iterator it = this.typeListenerBindings.iterator();
        while (it.hasNext()) {
            TypeListenerBinding typeListenerBinding = (TypeListenerBinding) it.next();
            TypeListener listener = typeListenerBinding.getListener();
            if (!newHashSet.contains(listener) && typeListenerBinding.getTypeMatcher().matches(typeLiteral)) {
                newHashSet.add(listener);
                try {
                    listener.hear(typeLiteral, encounterImpl);
                } catch (RuntimeException e2) {
                    errors.errorNotifyingTypeListener(typeListenerBinding, typeLiteral, e2);
                }
            }
        }
        encounterImpl.invalidate();
        errors.throwIfNewErrors(size);
        return new MembersInjectorImpl(this.injector, typeLiteral, encounterImpl, injectors);
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableList<SingleMemberInjector> getInjectors(Set<InjectionPoint> set, Errors errors) {
        Collection newArrayList = Lists.newArrayList();
        for (InjectionPoint injectionPoint : set) {
            try {
                Errors errors2 = injectionPoint.isOptional() ? new Errors(injectionPoint) : errors.withSource(injectionPoint);
                newArrayList.add(injectionPoint.getMember() instanceof Field ? new SingleFieldInjector(this.injector, injectionPoint, errors2) : new SingleMethodInjector(this.injector, injectionPoint, errors2));
            } catch (ErrorsException unused) {
            }
        }
        return ImmutableList.copyOf(newArrayList);
    }
}
