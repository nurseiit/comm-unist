package com.google.inject.internal;

import com.google.inject.Binder;
import com.google.inject.Key;
import com.google.inject.binder.AnnotatedConstantBindingBuilder;
import com.google.inject.binder.ConstantBindingBuilder;
import com.google.inject.spi.Element;
import java.lang.annotation.Annotation;
import java.util.List;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class ConstantBindingBuilderImpl<T> extends AbstractBindingBuilder<T> implements AnnotatedConstantBindingBuilder, ConstantBindingBuilder {
    public String toString() {
        return "ConstantBindingBuilder";
    }

    public ConstantBindingBuilderImpl(Binder binder, List<Element> list, Object obj) {
        super(binder, list, obj, NULL_KEY);
    }

    public ConstantBindingBuilder annotatedWith(Class<? extends Annotation> cls) {
        annotatedWithInternal((Class) cls);
        return this;
    }

    public ConstantBindingBuilder annotatedWith(Annotation annotation) {
        annotatedWithInternal(annotation);
        return this;
    }

    public void to(String str) {
        toConstant(String.class, str);
    }

    public void to(int i) {
        toConstant(Integer.class, Integer.valueOf(i));
    }

    public void to(long j) {
        toConstant(Long.class, Long.valueOf(j));
    }

    public void to(boolean z) {
        toConstant(Boolean.class, Boolean.valueOf(z));
    }

    public void to(double d) {
        toConstant(Double.class, Double.valueOf(d));
    }

    public void to(float f) {
        toConstant(Float.class, Float.valueOf(f));
    }

    public void to(short s) {
        toConstant(Short.class, Short.valueOf(s));
    }

    public void to(char c) {
        toConstant(Character.class, Character.valueOf(c));
    }

    public void to(byte b) {
        toConstant(Byte.class, Byte.valueOf(b));
    }

    public void to(Class<?> cls) {
        toConstant(Class.class, cls);
    }

    public <E extends Enum<E>> void to(E e) {
        toConstant(e.getDeclaringClass(), e);
    }

    private void toConstant(Class<?> cls, Object obj) {
        if (keyTypeIsSet()) {
            this.binder.addError(AbstractBindingBuilder.CONSTANT_VALUE_ALREADY_SET, new Object[0]);
            return;
        }
        Key key;
        BindingImpl binding = getBinding();
        if (binding.getKey().getAnnotation() != null) {
            key = Key.get((Class) cls, binding.getKey().getAnnotation());
        } else if (binding.getKey().getAnnotationType() != null) {
            key = Key.get((Class) cls, binding.getKey().getAnnotationType());
        } else {
            key = Key.get((Class) cls);
        }
        Key key2 = key;
        if (obj == null) {
            this.binder.addError(AbstractBindingBuilder.BINDING_TO_NULL, new Object[0]);
        }
        setBinding(new InstanceBindingImpl(binding.getSource(), key2, binding.getScoping(), ImmutableSet.of(), obj));
    }
}
