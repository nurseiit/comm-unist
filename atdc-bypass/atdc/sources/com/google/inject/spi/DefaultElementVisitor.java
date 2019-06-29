package com.google.inject.spi;

import com.google.inject.Binding;

public abstract class DefaultElementVisitor<V> implements ElementVisitor<V> {
    /* Access modifiers changed, original: protected */
    public V visitOther(Element element) {
        return null;
    }

    public V visit(Message message) {
        return visitOther(message);
    }

    public <T> V visit(Binding<T> binding) {
        return visitOther(binding);
    }

    public V visit(ScopeBinding scopeBinding) {
        return visitOther(scopeBinding);
    }

    public V visit(TypeConverterBinding typeConverterBinding) {
        return visitOther(typeConverterBinding);
    }

    public <T> V visit(ProviderLookup<T> providerLookup) {
        return visitOther(providerLookup);
    }

    public V visit(InjectionRequest<?> injectionRequest) {
        return visitOther(injectionRequest);
    }

    public V visit(StaticInjectionRequest staticInjectionRequest) {
        return visitOther(staticInjectionRequest);
    }

    public V visit(PrivateElements privateElements) {
        return visitOther(privateElements);
    }

    public <T> V visit(MembersInjectorLookup<T> membersInjectorLookup) {
        return visitOther(membersInjectorLookup);
    }

    public V visit(TypeListenerBinding typeListenerBinding) {
        return visitOther(typeListenerBinding);
    }

    public V visit(ProvisionListenerBinding provisionListenerBinding) {
        return visitOther(provisionListenerBinding);
    }

    public V visit(DisableCircularProxiesOption disableCircularProxiesOption) {
        return visitOther(disableCircularProxiesOption);
    }

    public V visit(RequireExplicitBindingsOption requireExplicitBindingsOption) {
        return visitOther(requireExplicitBindingsOption);
    }

    public V visit(RequireAtInjectOnConstructorsOption requireAtInjectOnConstructorsOption) {
        return visitOther(requireAtInjectOnConstructorsOption);
    }

    public V visit(RequireExactBindingAnnotationsOption requireExactBindingAnnotationsOption) {
        return visitOther(requireExactBindingAnnotationsOption);
    }
}
