package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.Scope;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.ProvisionListenerBinding;
import com.google.inject.spi.ScopeBinding;
import com.google.inject.spi.TypeConverterBinding;
import com.google.inject.spi.TypeListenerBinding;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;
import org.roboguice.shaded.goole.common.collect.ImmutableMap.Builder;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Maps;

final class InheritingState implements State {
    private final WeakKeySet blacklistedKeys;
    private final List<TypeConverterBinding> converters = Lists.newArrayList();
    private final Map<Key<?>, Binding<?>> explicitBindings = Collections.unmodifiableMap(this.explicitBindingsMutable);
    private final Map<Key<?>, Binding<?>> explicitBindingsMutable = Maps.newLinkedHashMap();
    private final Object lock;
    private final State parent;
    private final List<ProvisionListenerBinding> provisionListenerBindings = Lists.newArrayList();
    private final Map<Class<? extends Annotation>, ScopeBinding> scopes = Maps.newHashMap();
    private final List<TypeListenerBinding> typeListenerBindings = Lists.newArrayList();

    InheritingState(State state) {
        this.parent = (State) Preconditions.checkNotNull(state, "parent");
        this.lock = state == State.NONE ? this : state.lock();
        this.blacklistedKeys = new WeakKeySet(this.lock);
    }

    public State parent() {
        return this.parent;
    }

    public <T> BindingImpl<T> getExplicitBinding(Key<T> key) {
        Binding binding = (Binding) this.explicitBindings.get(key);
        return binding != null ? (BindingImpl) binding : this.parent.getExplicitBinding(key);
    }

    public Map<Key<?>, Binding<?>> getExplicitBindingsThisLevel() {
        return this.explicitBindings;
    }

    public void putBinding(Key<?> key, BindingImpl<?> bindingImpl) {
        this.explicitBindingsMutable.put(key, bindingImpl);
    }

    public ScopeBinding getScopeBinding(Class<? extends Annotation> cls) {
        ScopeBinding scopeBinding = (ScopeBinding) this.scopes.get(cls);
        return scopeBinding != null ? scopeBinding : this.parent.getScopeBinding(cls);
    }

    public void putScopeBinding(Class<? extends Annotation> cls, ScopeBinding scopeBinding) {
        this.scopes.put(cls, scopeBinding);
    }

    public Iterable<TypeConverterBinding> getConvertersThisLevel() {
        return this.converters;
    }

    public void addConverter(TypeConverterBinding typeConverterBinding) {
        this.converters.add(typeConverterBinding);
    }

    public TypeConverterBinding getConverter(String str, TypeLiteral<?> typeLiteral, Errors errors, Object obj) {
        TypeConverterBinding typeConverterBinding = null;
        State state = this;
        while (state != State.NONE) {
            TypeConverterBinding typeConverterBinding2;
            while (true) {
                typeConverterBinding2 = typeConverterBinding;
                for (TypeConverterBinding typeConverterBinding3 : state.getConvertersThisLevel()) {
                    if (typeConverterBinding3.getTypeMatcher().matches(typeLiteral)) {
                        if (typeConverterBinding2 != null) {
                            errors.ambiguousTypeConversion(str, obj, typeLiteral, typeConverterBinding2, typeConverterBinding3);
                        }
                    }
                }
                break;
            }
            state = state.parent();
            typeConverterBinding3 = typeConverterBinding2;
        }
        return typeConverterBinding3;
    }

    public void addTypeListener(TypeListenerBinding typeListenerBinding) {
        this.typeListenerBindings.add(typeListenerBinding);
    }

    public List<TypeListenerBinding> getTypeListenerBindings() {
        List typeListenerBindings = this.parent.getTypeListenerBindings();
        ArrayList arrayList = new ArrayList(typeListenerBindings.size() + 1);
        arrayList.addAll(typeListenerBindings);
        arrayList.addAll(this.typeListenerBindings);
        return arrayList;
    }

    public void addProvisionListener(ProvisionListenerBinding provisionListenerBinding) {
        this.provisionListenerBindings.add(provisionListenerBinding);
    }

    public List<ProvisionListenerBinding> getProvisionListenerBindings() {
        List provisionListenerBindings = this.parent.getProvisionListenerBindings();
        ArrayList arrayList = new ArrayList(provisionListenerBindings.size() + 1);
        arrayList.addAll(provisionListenerBindings);
        arrayList.addAll(this.provisionListenerBindings);
        return arrayList;
    }

    public void blacklist(Key<?> key, State state, Object obj) {
        this.parent.blacklist(key, state, obj);
        this.blacklistedKeys.add(key, state, obj);
    }

    public boolean isBlacklisted(Key<?> key) {
        return this.blacklistedKeys.contains(key);
    }

    public Set<Object> getSourcesForBlacklistedKey(Key<?> key) {
        return this.blacklistedKeys.getSources(key);
    }

    public Object lock() {
        return this.lock;
    }

    public Map<Class<? extends Annotation>, Scope> getScopes() {
        Builder builder = ImmutableMap.builder();
        for (Entry entry : this.scopes.entrySet()) {
            builder.put(entry.getKey(), ((ScopeBinding) entry.getValue()).getScope());
        }
        return builder.build();
    }
}
