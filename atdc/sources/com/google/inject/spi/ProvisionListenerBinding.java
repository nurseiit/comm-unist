package com.google.inject.spi;

import com.google.inject.Binder;
import com.google.inject.Binding;
import com.google.inject.matcher.Matcher;
import java.util.List;
import org.roboguice.shaded.goole.common.collect.ImmutableList;

public final class ProvisionListenerBinding implements Element {
    private final Matcher<? super Binding<?>> bindingMatcher;
    private final List<ProvisionListener> listeners;
    private final Object source;

    ProvisionListenerBinding(Object obj, Matcher<? super Binding<?>> matcher, ProvisionListener[] provisionListenerArr) {
        this.source = obj;
        this.bindingMatcher = matcher;
        this.listeners = ImmutableList.copyOf((Object[]) provisionListenerArr);
    }

    public List<ProvisionListener> getListeners() {
        return this.listeners;
    }

    public Matcher<? super Binding<?>> getBindingMatcher() {
        return this.bindingMatcher;
    }

    public Object getSource() {
        return this.source;
    }

    public <R> R acceptVisitor(ElementVisitor<R> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).bindListener(this.bindingMatcher, (ProvisionListener[]) this.listeners.toArray(new ProvisionListener[this.listeners.size()]));
    }
}
