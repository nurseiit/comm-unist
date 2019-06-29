package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.Scope;
import com.google.inject.Scopes;
import com.google.inject.Singleton;
import com.google.inject.Stage;
import com.google.inject.binder.ScopedBindingBuilder;
import com.google.inject.spi.BindingScopingVisitor;
import com.google.inject.spi.ScopeBinding;
import java.lang.annotation.Annotation;
import org.roboguice.shaded.goole.common.base.Objects;

public abstract class Scoping {
    public static final Scoping EAGER_SINGLETON = new Scoping() {
        public String toString() {
            return "eager singleton";
        }

        public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
            return bindingScopingVisitor.visitEagerSingleton();
        }

        public Scope getScopeInstance() {
            return Scopes.SINGLETON;
        }

        public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
            scopedBindingBuilder.asEagerSingleton();
        }
    };
    public static final Scoping SINGLETON_ANNOTATION = new Scoping() {
        public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
            return bindingScopingVisitor.visitScopeAnnotation(Singleton.class);
        }

        public Class<? extends Annotation> getScopeAnnotation() {
            return Singleton.class;
        }

        public String toString() {
            return Singleton.class.getName();
        }

        public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
            scopedBindingBuilder.in(Singleton.class);
        }
    };
    public static final Scoping SINGLETON_INSTANCE = new Scoping() {
        public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
            return bindingScopingVisitor.visitScope(Scopes.SINGLETON);
        }

        public Scope getScopeInstance() {
            return Scopes.SINGLETON;
        }

        public String toString() {
            return Scopes.SINGLETON.toString();
        }

        public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
            scopedBindingBuilder.in(Scopes.SINGLETON);
        }
    };
    public static final Scoping UNSCOPED = new Scoping() {
        public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
        }

        public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
            return bindingScopingVisitor.visitNoScoping();
        }

        public Scope getScopeInstance() {
            return Scopes.NO_SCOPE;
        }

        public String toString() {
            return Scopes.NO_SCOPE.toString();
        }
    };

    public abstract <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor);

    public abstract void applyTo(ScopedBindingBuilder scopedBindingBuilder);

    public Class<? extends Annotation> getScopeAnnotation() {
        return null;
    }

    public Scope getScopeInstance() {
        return null;
    }

    /* synthetic */ Scoping(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static Scoping forAnnotation(final Class<? extends Annotation> cls) {
        if (cls == Singleton.class || cls == javax.inject.Singleton.class) {
            return SINGLETON_ANNOTATION;
        }
        return new Scoping() {
            public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
                return bindingScopingVisitor.visitScopeAnnotation(cls);
            }

            public Class<? extends Annotation> getScopeAnnotation() {
                return cls;
            }

            public String toString() {
                return cls.getName();
            }

            public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
                scopedBindingBuilder.in(cls);
            }
        };
    }

    public static Scoping forInstance(final Scope scope) {
        if (scope == Scopes.SINGLETON) {
            return SINGLETON_INSTANCE;
        }
        return new Scoping() {
            public <V> V acceptVisitor(BindingScopingVisitor<V> bindingScopingVisitor) {
                return bindingScopingVisitor.visitScope(scope);
            }

            public Scope getScopeInstance() {
                return scope;
            }

            public String toString() {
                return scope.toString();
            }

            public void applyTo(ScopedBindingBuilder scopedBindingBuilder) {
                scopedBindingBuilder.in(scope);
            }
        };
    }

    public boolean isExplicitlyScoped() {
        return this != UNSCOPED;
    }

    public boolean isNoScope() {
        return getScopeInstance() == Scopes.NO_SCOPE;
    }

    public boolean isEagerSingleton(Stage stage) {
        boolean z = true;
        if (this == EAGER_SINGLETON) {
            return true;
        }
        if (stage != Stage.PRODUCTION) {
            return false;
        }
        if (!(this == SINGLETON_ANNOTATION || this == SINGLETON_INSTANCE)) {
            z = false;
        }
        return z;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof Scoping)) {
            return false;
        }
        Scoping scoping = (Scoping) obj;
        if (Objects.equal(getScopeAnnotation(), scoping.getScopeAnnotation()) && Objects.equal(getScopeInstance(), scoping.getScopeInstance())) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hashCode(getScopeAnnotation(), getScopeInstance());
    }

    private Scoping() {
    }

    static <T> InternalFactory<? extends T> scope(Key<T> key, InjectorImpl injectorImpl, InternalFactory<? extends T> internalFactory, Object obj, Scoping scoping) {
        if (scoping.isNoScope()) {
            return internalFactory;
        }
        return new InternalFactoryToProviderAdapter(scoping.getScopeInstance().scope(key, new ProviderToInternalFactoryAdapter(injectorImpl, internalFactory)), obj);
    }

    static Scoping makeInjectable(Scoping scoping, InjectorImpl injectorImpl, Errors errors) {
        Class scopeAnnotation = scoping.getScopeAnnotation();
        if (scopeAnnotation == null) {
            return scoping;
        }
        ScopeBinding scopeBinding = injectorImpl.state.getScopeBinding(scopeAnnotation);
        if (scopeBinding != null) {
            return forInstance(scopeBinding.getScope());
        }
        errors.scopeNotFound(scopeAnnotation);
        return UNSCOPED;
    }
}
