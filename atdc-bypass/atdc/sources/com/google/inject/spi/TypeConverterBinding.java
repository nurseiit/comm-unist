package com.google.inject.spi;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.Errors;
import com.google.inject.matcher.Matcher;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class TypeConverterBinding implements Element {
    private final Object source;
    private final TypeConverter typeConverter;
    private final Matcher<? super TypeLiteral<?>> typeMatcher;

    public TypeConverterBinding(Object obj, Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter) {
        this.source = Preconditions.checkNotNull(obj, Param.SOURCE);
        this.typeMatcher = (Matcher) Preconditions.checkNotNull(matcher, "typeMatcher");
        this.typeConverter = (TypeConverter) Preconditions.checkNotNull(typeConverter, "typeConverter");
    }

    public Object getSource() {
        return this.source;
    }

    public Matcher<? super TypeLiteral<?>> getTypeMatcher() {
        return this.typeMatcher;
    }

    public TypeConverter getTypeConverter() {
        return this.typeConverter;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).convertToTypes(this.typeMatcher, this.typeConverter);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.typeConverter);
        stringBuilder.append(" which matches ");
        stringBuilder.append(this.typeMatcher);
        stringBuilder.append(" (bound at ");
        stringBuilder.append(Errors.convert(this.source));
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
