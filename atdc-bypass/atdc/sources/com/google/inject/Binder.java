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

public interface Binder {
    void addError(Message message);

    void addError(String str, Object... objArr);

    void addError(Throwable th);

    <T> AnnotatedBindingBuilder<T> bind(TypeLiteral<T> typeLiteral);

    <T> AnnotatedBindingBuilder<T> bind(Class<T> cls);

    <T> LinkedBindingBuilder<T> bind(Key<T> key);

    AnnotatedConstantBindingBuilder bindConstant();

    void bindListener(Matcher<? super TypeLiteral<?>> matcher, TypeListener typeListener);

    void bindListener(Matcher<? super Binding<?>> matcher, ProvisionListener... provisionListenerArr);

    void bindScope(Class<? extends Annotation> cls, Scope scope);

    void convertToTypes(Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter);

    Stage currentStage();

    void disableCircularProxies();

    <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral);

    <T> MembersInjector<T> getMembersInjector(Class<T> cls);

    <T> Provider<T> getProvider(Key<T> key);

    <T> Provider<T> getProvider(Class<T> cls);

    void install(Module module);

    PrivateBinder newPrivateBinder();

    <T> void requestInjection(TypeLiteral<T> typeLiteral, T t);

    void requestInjection(Object obj);

    void requestStaticInjection(Class<?>... clsArr);

    void requireAtInjectOnConstructors();

    void requireExactBindingAnnotations();

    void requireExplicitBindings();

    Binder skipSources(Class... clsArr);

    Binder withSource(Object obj);
}
