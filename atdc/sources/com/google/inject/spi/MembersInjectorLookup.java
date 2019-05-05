package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.MembersInjector;
import com.google.inject.TypeLiteral;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class MembersInjectorLookup<T> implements Element {
    private MembersInjector<T> delegate;
    private final Object source;
    private final TypeLiteral<T> type;

    public MembersInjectorLookup(Object obj, TypeLiteral<T> typeLiteral) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        this.type = (TypeLiteral) Preconditions.checkNotNull(typeLiteral, "type");
    }

    public Object getSource() {
        return this.source;
    }

    public TypeLiteral<T> getType() {
        return this.type;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void initializeDelegate(MembersInjector<T> membersInjector) {
        Preconditions.checkState(this.delegate == null, "delegate already initialized");
        this.delegate = (MembersInjector) Preconditions.checkNotNull(membersInjector, "delegate");
    }

    public void applyTo(Binder binder) {
        initializeDelegate(binder.withSource(getSource()).getMembersInjector(this.type));
    }

    public MembersInjector<T> getDelegate() {
        return this.delegate;
    }

    public MembersInjector<T> getMembersInjector() {
        return new MembersInjector<T>() {
            public void injectMembers(T t) {
                Preconditions.checkState(MembersInjectorLookup.this.delegate != null, "This MembersInjector cannot be used until the Injector has been created.");
                MembersInjectorLookup.this.delegate.injectMembers(t);
            }

            public String toString() {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("MembersInjector<");
                stringBuilder.append(MembersInjectorLookup.this.type);
                stringBuilder.append(">");
                return stringBuilder.toString();
            }
        };
    }
}
