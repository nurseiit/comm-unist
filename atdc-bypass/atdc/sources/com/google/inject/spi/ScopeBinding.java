package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Scope;
import java.lang.annotation.Annotation;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class ScopeBinding implements Element {
    private final Class<? extends Annotation> annotationType;
    private final Scope scope;
    private final Object source;

    ScopeBinding(Object obj, Class<? extends Annotation> cls, Scope scope) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        this.annotationType = (Class) Preconditions.checkNotNull(cls, "annotationType");
        this.scope = (Scope) Preconditions.checkNotNull(scope, "scope");
    }

    public Object getSource() {
        return this.source;
    }

    public Class<? extends Annotation> getAnnotationType() {
        return this.annotationType;
    }

    public Scope getScope() {
        return this.scope;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).bindScope(this.annotationType, this.scope);
    }
}
