package com.google.inject;

import com.google.inject.binder.AnnotatedBindingBuilder;
import com.google.inject.binder.AnnotatedConstantBindingBuilder;
import com.google.inject.binder.LinkedBindingBuilder;
import com.google.inject.matcher.Matcher;
import com.google.inject.spi.Message;
import com.google.inject.spi.ProvisionListener;
import com.google.inject.spi.TypeConverter;
import com.google.inject.spi.TypeListener;
import java.lang.annotation.Annotation;
import org.roboguice.shaded.goole.common.base.Preconditions;

public abstract class AbstractModule implements Module {
    private AnnotationDatabaseFinder annotationDatabaseFinder;
    protected Binder binder;
    private AnnotatedBindingBuilder noOpAnnotatedBindingBuilder = new NoOpAnnotatedBindingBuilder();

    public abstract void configure();

    public void setAnnotationDatabaseFinder(AnnotationDatabaseFinder annotationDatabaseFinder) {
        this.annotationDatabaseFinder = annotationDatabaseFinder;
    }

    public final synchronized void configure(Binder binder) {
        Preconditions.checkState(this.binder == null, "Re-entry is not allowed.");
        this.binder = (Binder) Preconditions.checkNotNull(binder, "builder");
        try {
            configure();
        } finally {
            this.binder = null;
        }
    }

    /* Access modifiers changed, original: protected */
    public Binder binder() {
        Preconditions.checkState(this.binder != null, "The binder can only be used inside configure()");
        return this.binder;
    }

    /* Access modifiers changed, original: protected */
    public void bindScope(Class<? extends Annotation> cls, Scope scope) {
        binder().bindScope(cls, scope);
    }

    /* Access modifiers changed, original: protected */
    public <T> LinkedBindingBuilder<T> bind(Key<T> key) {
        return binder().bind((Key) key);
    }

    /* Access modifiers changed, original: protected */
    public <T> AnnotatedBindingBuilder<T> bind(TypeLiteral<T> typeLiteral) {
        return binder().bind((TypeLiteral) typeLiteral);
    }

    /* Access modifiers changed, original: protected */
    public <T> AnnotatedBindingBuilder<T> bind(Class<T> cls) {
        if (isInjectable(cls)) {
            return this.binder.bind((Class) cls);
        }
        return this.noOpAnnotatedBindingBuilder;
    }

    /* Access modifiers changed, original: protected */
    public <T> AnnotatedBindingBuilder<T> superbind(Class<T> cls) {
        return this.binder.bind((Class) cls);
    }

    /* Access modifiers changed, original: protected */
    public AnnotatedConstantBindingBuilder bindConstant() {
        return binder().bindConstant();
    }

    /* Access modifiers changed, original: protected */
    public void install(Module module) {
        if (this.annotationDatabaseFinder != null && (module instanceof AbstractModule)) {
            ((AbstractModule) module).setAnnotationDatabaseFinder(this.annotationDatabaseFinder);
        }
        binder().install(module);
    }

    /* Access modifiers changed, original: protected|varargs */
    public void addError(String str, Object... objArr) {
        binder().addError(str, objArr);
    }

    /* Access modifiers changed, original: protected */
    public void addError(Throwable th) {
        binder().addError(th);
    }

    /* Access modifiers changed, original: protected */
    public void addError(Message message) {
        binder().addError(message);
    }

    /* Access modifiers changed, original: protected */
    public void requestInjection(Object obj) {
        binder().requestInjection(obj);
    }

    /* Access modifiers changed, original: protected|varargs */
    public void requestStaticInjection(Class<?>... clsArr) {
        binder().requestStaticInjection(clsArr);
    }

    /* Access modifiers changed, original: protected */
    public void requireBinding(Key<?> key) {
        binder().getProvider((Key) key);
    }

    /* Access modifiers changed, original: protected */
    public void requireBinding(Class<?> cls) {
        binder().getProvider((Class) cls);
    }

    /* Access modifiers changed, original: protected */
    public <T> Provider<T> getProvider(Key<T> key) {
        return binder().getProvider((Key) key);
    }

    /* Access modifiers changed, original: protected */
    public <T> Provider<T> getProvider(Class<T> cls) {
        return binder().getProvider((Class) cls);
    }

    /* Access modifiers changed, original: protected */
    public void convertToTypes(Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter) {
        binder().convertToTypes(matcher, typeConverter);
    }

    /* Access modifiers changed, original: protected */
    public Stage currentStage() {
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

    /* Access modifiers changed, original: protected */
    public boolean isInjectable(Class cls) {
        return this.annotationDatabaseFinder == null || this.annotationDatabaseFinder.getBindableClassesSet().contains(cls.getName());
    }

    /* Access modifiers changed, original: protected */
    public boolean hasInjectionPointsForAnnotation(Class cls) {
        return this.annotationDatabaseFinder == null || this.annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet().containsKey(cls.getName()) || this.annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet().containsKey(cls.getName()) || this.annotationDatabaseFinder.getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet().containsKey(cls.getName());
    }

    public AnnotationDatabaseFinder getAnnotationDatabaseFinder() {
        return this.annotationDatabaseFinder;
    }
}
