package com.google.inject;

import com.google.inject.binder.AnnotatedBindingBuilder;
import com.google.inject.binder.LinkedBindingBuilder;
import com.google.inject.binder.ScopedBindingBuilder;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import javax.inject.Provider;

public class NoOpAnnotatedBindingBuilder<T> implements AnnotatedBindingBuilder<T> {
    private NoOpLinkedBindingBuilder<T> noOpLinkedBindingBuilder = new NoOpLinkedBindingBuilder();
    private ScopedBindingBuilder scopedBindingBuilder = new NoOpScopedBindingBuilder();

    private static class NoOpScopedBindingBuilder implements ScopedBindingBuilder {
        public void asEagerSingleton() {
        }

        public void in(Scope scope) {
        }

        public void in(Class<? extends Annotation> cls) {
        }

        private NoOpScopedBindingBuilder() {
        }
    }

    private class NoOpLinkedBindingBuilder<U> implements LinkedBindingBuilder<U> {
        public void asEagerSingleton() {
        }

        public void in(Scope scope) {
        }

        public void in(Class<? extends Annotation> cls) {
        }

        public void toInstance(U u) {
        }

        private NoOpLinkedBindingBuilder() {
        }

        public ScopedBindingBuilder to(Class<? extends U> cls) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder to(TypeLiteral<? extends U> typeLiteral) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder to(Key<? extends U> key) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder toProvider(Provider<? extends U> provider) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder toProvider(Class<? extends Provider<? extends U>> cls) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder toProvider(TypeLiteral<? extends Provider<? extends U>> typeLiteral) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder toProvider(Key<? extends Provider<? extends U>> key) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public <S extends U> ScopedBindingBuilder toConstructor(Constructor<S> constructor) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public <S extends U> ScopedBindingBuilder toConstructor(Constructor<S> constructor, TypeLiteral<? extends S> typeLiteral) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }

        public ScopedBindingBuilder toProvider(Provider<? extends U> provider) {
            return NoOpAnnotatedBindingBuilder.this.scopedBindingBuilder;
        }
    }

    public LinkedBindingBuilder<T> annotatedWith(Annotation annotation) {
        return this;
    }

    public void asEagerSingleton() {
    }

    public void in(Scope scope) {
    }

    public void in(Class<? extends Annotation> cls) {
    }

    public void toInstance(T t) {
    }

    public LinkedBindingBuilder<T> annotatedWith(Class<? extends Annotation> cls) {
        return this.noOpLinkedBindingBuilder;
    }

    public ScopedBindingBuilder to(Class<? extends T> cls) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder to(TypeLiteral<? extends T> typeLiteral) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder to(Key<? extends T> key) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder toProvider(Provider<? extends T> provider) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder toProvider(Class<? extends Provider<? extends T>> cls) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder toProvider(TypeLiteral<? extends Provider<? extends T>> typeLiteral) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder toProvider(Key<? extends Provider<? extends T>> key) {
        return this.scopedBindingBuilder;
    }

    public <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor) {
        return this.scopedBindingBuilder;
    }

    public <S extends T> ScopedBindingBuilder toConstructor(Constructor<S> constructor, TypeLiteral<? extends S> typeLiteral) {
        return this.scopedBindingBuilder;
    }

    public ScopedBindingBuilder toProvider(Provider<? extends T> provider) {
        return this.scopedBindingBuilder;
    }
}
