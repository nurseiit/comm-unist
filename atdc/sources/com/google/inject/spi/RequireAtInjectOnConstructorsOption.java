package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class RequireAtInjectOnConstructorsOption implements Element {
    private final Object source;

    RequireAtInjectOnConstructorsOption(Object obj) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
    }

    public Object getSource() {
        return this.source;
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).requireAtInjectOnConstructors();
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }
}
