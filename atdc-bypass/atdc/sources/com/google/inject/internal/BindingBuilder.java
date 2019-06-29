package com.google.inject.internal;

import com.google.inject.Binder;
import com.google.inject.ConfigurationException;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.binder.AnnotatedBindingBuilder;
import com.google.inject.binder.ScopedBindingBuilder;
import com.google.inject.spi.Element;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.Message;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public class BindingBuilder<T> extends AbstractBindingBuilder<T> implements AnnotatedBindingBuilder<T> {
    public BindingBuilder(Binder binder, List<Element> list, Object obj, Key<T> key) {
        super(binder, list, obj, key);
    }

    public BindingBuilder<T> annotatedWith(Class<? extends Annotation> cls) {
        annotatedWithInternal((Class) cls);
        return this;
    }

    public BindingBuilder<T> annotatedWith(Annotation annotation) {
        annotatedWithInternal(annotation);
        return this;
    }

    public BindingBuilder<T> to(Class<? extends T> cls) {
        return to(Key.get((Class) cls));
    }

    public BindingBuilder<T> to(TypeLiteral<? extends T> typeLiteral) {
        return to(Key.get((TypeLiteral) typeLiteral));
    }

    public BindingBuilder<T> to(Key<? extends T> key) {
        Preconditions.checkNotNull(key, "linkedKey");
        checkNotTargetted();
        BindingImpl binding = getBinding();
        setBinding(new LinkedBindingImpl(binding.getSource(), binding.getKey(), binding.getScoping(), key));
        return this;
    }

    public void toInstance(T t) {
        Set forInstanceMethodsAndFields;
        checkNotTargetted();
        if (t != null) {
            try {
                forInstanceMethodsAndFields = InjectionPoint.forInstanceMethodsAndFields(t.getClass());
            } catch (ConfigurationException e) {
                copyErrorsToBinder(e);
                forInstanceMethodsAndFields = (Set) e.getPartialValue();
            }
        } else {
            this.binder.addError(AbstractBindingBuilder.BINDING_TO_NULL, new Object[0]);
            forInstanceMethodsAndFields = ImmutableSet.of();
        }
        Set set = forInstanceMethodsAndFields;
        BindingImpl binding = getBinding();
        setBinding(new InstanceBindingImpl(binding.getSource(), binding.getKey(), Scoping.EAGER_SINGLETON, set, t));
    }

    public BindingBuilder<T> toProvider(Provider<? extends T> provider) {
        return toProvider((javax.inject.Provider) provider);
    }

    public BindingBuilder<T> toProvider(javax.inject.Provider<? extends T> provider) {
        Set forInstanceMethodsAndFields;
        Preconditions.checkNotNull(provider, "provider");
        checkNotTargetted();
        try {
            forInstanceMethodsAndFields = InjectionPoint.forInstanceMethodsAndFields(provider.getClass());
        } catch (ConfigurationException e) {
            copyErrorsToBinder(e);
            forInstanceMethodsAndFields = (Set) e.getPartialValue();
        }
        Set set = forInstanceMethodsAndFields;
        BindingImpl binding = getBinding();
        setBinding(new ProviderInstanceBindingImpl(binding.getSource(), binding.getKey(), binding.getScoping(), set, provider));
        return this;
    }

    public BindingBuilder<T> toProvider(Class<? extends javax.inject.Provider<? extends T>> cls) {
        return toProvider(Key.get((Class) cls));
    }

    public BindingBuilder<T> toProvider(TypeLiteral<? extends javax.inject.Provider<? extends T>> typeLiteral) {
        return toProvider(Key.get((TypeLiteral) typeLiteral));
    }

    public BindingBuilder<T> toProvider(Key<? extends javax.inject.Provider<? extends T>> key) {
        Preconditions.checkNotNull(key, "providerKey");
        checkNotTargetted();
        BindingImpl binding = getBinding();
        setBinding(new LinkedProviderBindingImpl(binding.getSource(), binding.getKey(), binding.getScoping(), key));
        return this;
    }

    public <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor) {
        return toConstructor(constructor, TypeLiteral.get(constructor.getDeclaringClass()));
    }

    public <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor, TypeLiteral<? extends S> typeLiteral) {
        Set forInstanceMethodsAndFields;
        Preconditions.checkNotNull(constructor, "constructor");
        Preconditions.checkNotNull(typeLiteral, "type");
        checkNotTargetted();
        BindingImpl binding = getBinding();
        try {
            forInstanceMethodsAndFields = InjectionPoint.forInstanceMethodsAndFields((TypeLiteral) typeLiteral);
        } catch (ConfigurationException e) {
            copyErrorsToBinder(e);
            forInstanceMethodsAndFields = (Set) e.getPartialValue();
        }
        Set set = forInstanceMethodsAndFields;
        try {
            setBinding(new ConstructorBindingImpl(binding.getKey(), binding.getSource(), binding.getScoping(), InjectionPoint.forConstructor(constructor, typeLiteral), set));
        } catch (ConfigurationException e2) {
            copyErrorsToBinder(e2);
        }
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("BindingBuilder<");
        stringBuilder.append(getBinding().getKey().getTypeLiteral());
        stringBuilder.append(">");
        return stringBuilder.toString();
    }

    private void copyErrorsToBinder(ConfigurationException configurationException) {
        for (Message addError : configurationException.getErrorMessages()) {
            this.binder.addError(addError);
        }
    }
}
