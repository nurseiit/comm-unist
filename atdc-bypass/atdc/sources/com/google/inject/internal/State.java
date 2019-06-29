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
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

interface State {
    public static final State NONE = new State() {
        public void blacklist(Key<?> key, State state, Object obj) {
        }

        public <T> BindingImpl<T> getExplicitBinding(Key<T> key) {
            return null;
        }

        public ScopeBinding getScopeBinding(Class<? extends Annotation> cls) {
            return null;
        }

        public boolean isBlacklisted(Key<?> key) {
            return true;
        }

        public State parent() {
            throw new UnsupportedOperationException();
        }

        public Map<Key<?>, Binding<?>> getExplicitBindingsThisLevel() {
            throw new UnsupportedOperationException();
        }

        public void putBinding(Key<?> key, BindingImpl<?> bindingImpl) {
            throw new UnsupportedOperationException();
        }

        public void putScopeBinding(Class<? extends Annotation> cls, ScopeBinding scopeBinding) {
            throw new UnsupportedOperationException();
        }

        public void addConverter(TypeConverterBinding typeConverterBinding) {
            throw new UnsupportedOperationException();
        }

        public TypeConverterBinding getConverter(String str, TypeLiteral<?> typeLiteral, Errors errors, Object obj) {
            throw new UnsupportedOperationException();
        }

        public Iterable<TypeConverterBinding> getConvertersThisLevel() {
            return ImmutableSet.of();
        }

        public void addTypeListener(TypeListenerBinding typeListenerBinding) {
            throw new UnsupportedOperationException();
        }

        public List<TypeListenerBinding> getTypeListenerBindings() {
            return ImmutableList.of();
        }

        public void addProvisionListener(ProvisionListenerBinding provisionListenerBinding) {
            throw new UnsupportedOperationException();
        }

        public List<ProvisionListenerBinding> getProvisionListenerBindings() {
            return ImmutableList.of();
        }

        public Set<Object> getSourcesForBlacklistedKey(Key<?> key) {
            throw new UnsupportedOperationException();
        }

        public Object lock() {
            throw new UnsupportedOperationException();
        }

        public Map<Class<? extends Annotation>, Scope> getScopes() {
            return ImmutableMap.of();
        }
    };

    void addConverter(TypeConverterBinding typeConverterBinding);

    void addProvisionListener(ProvisionListenerBinding provisionListenerBinding);

    void addTypeListener(TypeListenerBinding typeListenerBinding);

    void blacklist(Key<?> key, State state, Object obj);

    TypeConverterBinding getConverter(String str, TypeLiteral<?> typeLiteral, Errors errors, Object obj);

    Iterable<TypeConverterBinding> getConvertersThisLevel();

    <T> BindingImpl<T> getExplicitBinding(Key<T> key);

    Map<Key<?>, Binding<?>> getExplicitBindingsThisLevel();

    List<ProvisionListenerBinding> getProvisionListenerBindings();

    ScopeBinding getScopeBinding(Class<? extends Annotation> cls);

    Map<Class<? extends Annotation>, Scope> getScopes();

    Set<Object> getSourcesForBlacklistedKey(Key<?> key);

    List<TypeListenerBinding> getTypeListenerBindings();

    boolean isBlacklisted(Key<?> key);

    Object lock();

    State parent();

    void putBinding(Key<?> key, BindingImpl<?> bindingImpl);

    void putScopeBinding(Class<? extends Annotation> cls, ScopeBinding scopeBinding);
}
