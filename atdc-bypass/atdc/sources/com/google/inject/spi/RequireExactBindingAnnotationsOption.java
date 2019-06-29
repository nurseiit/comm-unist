package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class RequireExactBindingAnnotationsOption implements Element {
    private final Object source;

    RequireExactBindingAnnotationsOption(Object obj) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
    }

    public Object getSource() {
        return this.source;
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).requireExactBindingAnnotations();
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }
}
