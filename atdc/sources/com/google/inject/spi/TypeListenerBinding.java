package com.google.inject.spi;

import com.google.inject.Binder;
import com.google.inject.TypeLiteral;
import com.google.inject.matcher.Matcher;

public final class TypeListenerBinding implements Element {
    private final TypeListener listener;
    private final Object source;
    private final Matcher<? super TypeLiteral<?>> typeMatcher;

    TypeListenerBinding(Object obj, TypeListener typeListener, Matcher<? super TypeLiteral<?>> matcher) {
        this.source = obj;
        this.listener = typeListener;
        this.typeMatcher = matcher;
    }

    public TypeListener getListener() {
        return this.listener;
    }

    public Matcher<? super TypeLiteral<?>> getTypeMatcher() {
        return this.typeMatcher;
    }

    public Object getSource() {
        return this.source;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).bindListener(this.typeMatcher, this.listener);
    }
}
