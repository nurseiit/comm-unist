package com.google.inject;

import com.google.inject.internal.CircularDependencyProxy;
import com.google.inject.internal.InternalInjectorCreator;
import com.google.inject.internal.LinkedBindingImpl;
import com.google.inject.spi.BindingScopingVisitor;
import com.google.inject.spi.ExposedBinding;
import java.lang.annotation.Annotation;
import javax.inject.Singleton;

public class Scopes {
    private static final BindingScopingVisitor<Boolean> IS_SINGLETON_VISITOR = new BindingScopingVisitor<Boolean>() {
        public Boolean visitNoScoping() {
            return Boolean.valueOf(false);
        }

        public Boolean visitScopeAnnotation(Class<? extends Annotation> cls) {
            boolean z = cls == Singleton.class || cls == Singleton.class;
            return Boolean.valueOf(z);
        }

        public Boolean visitScope(Scope scope) {
            return Boolean.valueOf(scope == Scopes.SINGLETON);
        }

        public Boolean visitEagerSingleton() {
            return Boolean.valueOf(true);
        }
    };
    public static final Scope NO_SCOPE = new Scope() {
        public <T> Provider<T> scope(Key<T> key, Provider<T> provider) {
            return provider;
        }

        public String toString() {
            return "Scopes.NO_SCOPE";
        }
    };
    private static final Object NULL = new Object();
    public static final Scope SINGLETON = new Scope() {
        public String toString() {
            return "Scopes.SINGLETON";
        }

        public <T> Provider<T> scope(Key<T> key, final Provider<T> provider) {
            return new Provider<T>() {
                private volatile Object instance;

                public T get() {
                    if (this.instance == null) {
                        synchronized (InternalInjectorCreator.class) {
                            if (this.instance == null) {
                                Object obj = provider.get();
                                if (Scopes.isCircularProxy(obj)) {
                                    return obj;
                                }
                                if (obj == null) {
                                    obj = Scopes.NULL;
                                }
                                if (this.instance == null || this.instance == obj) {
                                    this.instance = obj;
                                } else {
                                    throw new ProvisionException("Provider was reentrant while creating a singleton");
                                }
                            }
                        }
                    }
                    T t = this.instance;
                    if (t == Scopes.NULL) {
                        t = null;
                    }
                    return t;
                }

                public String toString() {
                    return String.format("%s[%s]", new Object[]{provider, Scopes.SINGLETON});
                }
            };
        }
    };

    private Scopes() {
    }

    public static boolean isSingleton(Binding<?> binding) {
        Binding binding2;
        while (!((Boolean) binding2.acceptScopingVisitor(IS_SINGLETON_VISITOR)).booleanValue()) {
            if (binding2 instanceof LinkedBindingImpl) {
                LinkedBindingImpl linkedBindingImpl = (LinkedBindingImpl) binding2;
                InjectorImpl injector = linkedBindingImpl.getInjector();
                if (injector != null) {
                    binding2 = injector.getBinding(linkedBindingImpl.getLinkedKey());
                }
            } else if (binding2 instanceof ExposedBinding) {
                ExposedBinding exposedBinding = (ExposedBinding) binding2;
                Injector injector2 = exposedBinding.getPrivateElements().getInjector();
                if (injector2 != null) {
                    binding2 = injector2.getBinding(exposedBinding.getKey());
                }
            }
            return false;
        }
        return true;
    }

    public static boolean isScoped(Binding<?> binding, final Scope scope, final Class<? extends Annotation> cls) {
        Binding binding2;
        while (!((Boolean) binding2.acceptScopingVisitor(new BindingScopingVisitor<Boolean>() {
            public Boolean visitNoScoping() {
                return Boolean.valueOf(false);
            }

            public Boolean visitScopeAnnotation(Class<? extends Annotation> cls) {
                return Boolean.valueOf(cls == cls);
            }

            public Boolean visitScope(Scope scope) {
                return Boolean.valueOf(scope == scope);
            }

            public Boolean visitEagerSingleton() {
                return Boolean.valueOf(false);
            }
        })).booleanValue()) {
            if (binding2 instanceof LinkedBindingImpl) {
                LinkedBindingImpl linkedBindingImpl = (LinkedBindingImpl) binding2;
                InjectorImpl injector = linkedBindingImpl.getInjector();
                if (injector != null) {
                    binding2 = injector.getBinding(linkedBindingImpl.getLinkedKey());
                }
            } else if (binding2 instanceof ExposedBinding) {
                ExposedBinding exposedBinding = (ExposedBinding) binding2;
                Injector injector2 = exposedBinding.getPrivateElements().getInjector();
                if (injector2 != null) {
                    binding2 = injector2.getBinding(exposedBinding.getKey());
                }
            }
            return false;
        }
        return true;
    }

    public static boolean isCircularProxy(Object obj) {
        return obj instanceof CircularDependencyProxy;
    }
}
