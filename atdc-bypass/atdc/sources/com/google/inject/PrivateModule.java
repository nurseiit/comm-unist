package com.google.inject;

import com.google.inject.binder.AnnotatedBindingBuilder;
import com.google.inject.binder.AnnotatedConstantBindingBuilder;
import com.google.inject.binder.AnnotatedElementBuilder;
import com.google.inject.binder.LinkedBindingBuilder;
import com.google.inject.matcher.Matcher;
import com.google.inject.spi.Message;
import com.google.inject.spi.ProvisionListener;
import com.google.inject.spi.TypeConverter;
import com.google.inject.spi.TypeListener;
import java.lang.annotation.Annotation;
import org.roboguice.shaded.goole.common.base.Preconditions;

public abstract class PrivateModule implements Module {
    private PrivateBinder binder;

    public abstract void configure();

    public final synchronized void configure(Binder binder) {
        Preconditions.checkState(this.binder == null, "Re-entry is not allowed.");
        this.binder = (PrivateBinder) binder.skipSources(PrivateModule.class);
        try {
            configure();
        } finally {
            this.binder = null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> void expose(Key<T> key) {
        binder().expose((Key) key);
    }

    /* Access modifiers changed, original: protected|final */
    public final AnnotatedElementBuilder expose(Class<?> cls) {
        return binder().expose((Class) cls);
    }

    /* Access modifiers changed, original: protected|final */
    public final AnnotatedElementBuilder expose(TypeLiteral<?> typeLiteral) {
        return binder().expose((TypeLiteral) typeLiteral);
    }

    /* Access modifiers changed, original: protected|final */
    public final PrivateBinder binder() {
        Preconditions.checkState(this.binder != null, "The binder can only be used inside configure()");
        return this.binder;
    }

    /* Access modifiers changed, original: protected|final */
    public final void bindScope(Class<? extends Annotation> cls, Scope scope) {
        binder().bindScope(cls, scope);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> LinkedBindingBuilder<T> bind(Key<T> key) {
        return binder().bind((Key) key);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> AnnotatedBindingBuilder<T> bind(TypeLiteral<T> typeLiteral) {
        return binder().bind((TypeLiteral) typeLiteral);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> AnnotatedBindingBuilder<T> bind(Class<T> cls) {
        return binder().bind((Class) cls);
    }

    /* Access modifiers changed, original: protected|final */
    public final AnnotatedConstantBindingBuilder bindConstant() {
        return binder().bindConstant();
    }

    /* Access modifiers changed, original: protected|final */
    public final void install(Module module) {
        binder().install(module);
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final void addError(String str, Object... objArr) {
        binder().addError(str, objArr);
    }

    /* Access modifiers changed, original: protected|final */
    public final void addError(Throwable th) {
        binder().addError(th);
    }

    /* Access modifiers changed, original: protected|final */
    public final void addError(Message message) {
        binder().addError(message);
    }

    /* Access modifiers changed, original: protected|final */
    public final void requestInjection(Object obj) {
        binder().requestInjection(obj);
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final void requestStaticInjection(Class<?>... clsArr) {
        binder().requestStaticInjection(clsArr);
    }

    /* Access modifiers changed, original: protected|final */
    public final void requireBinding(Key<?> key) {
        binder().getProvider((Key) key);
    }

    /* Access modifiers changed, original: protected|final */
    public final void requireBinding(Class<?> cls) {
        binder().getProvider((Class) cls);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> Provider<T> getProvider(Key<T> key) {
        return binder().getProvider((Key) key);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> Provider<T> getProvider(Class<T> cls) {
        return binder().getProvider((Class) cls);
    }

    /* Access modifiers changed, original: protected|final */
    public final void convertToTypes(Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter) {
        binder().convertToTypes(matcher, typeConverter);
    }

    /* Access modifiers changed, original: protected|final */
    public final Stage currentStage() {
        return binder().currentStage();
    }

    /* Access modifiers changed, original: protected */
    public <T> MembersInjector<T> getMembersInjector(Class<T> cls) {
        return binder().getMembersInjector((Class) cls);
    }

    /* Access modifiers changed, original: protected */
    public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
        return binder().getMembersInjector((TypeLiteral) typeLiteral);
    }

    /* Access modifiers changed, original: protected */
    public void bindListener(Matcher<? super TypeLiteral<?>> matcher, TypeListener typeListener) {
        binder().bindListener((Matcher) matcher, typeListener);
    }

    /* Access modifiers changed, original: protected|varargs */
    public void bindListener(Matcher<? super Binding<?>> matcher, ProvisionListener... provisionListenerArr) {
        binder().bindListener((Matcher) matcher, provisionListenerArr);
    }
}
