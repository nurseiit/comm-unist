package roboguice.inject;

import android.content.Context;
import com.google.inject.Binding;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Module;
import com.google.inject.Provider;
import com.google.inject.Scope;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.TypeConverterBinding;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import java.util.Set;
import roboguice.inject.ViewListener.ViewMembersInjector;

public class ContextScopedRoboInjector implements RoboInjector {
    protected Context context;
    protected Injector delegate;
    protected ContextScope scope = ((ContextScope) this.delegate.getInstance(ContextScope.class));

    public ContextScopedRoboInjector(Context context, Injector injector) {
        this.delegate = injector;
        this.context = context;
    }

    public Injector createChildInjector(Iterable<? extends Module> iterable) {
        Injector createChildInjector;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                createChildInjector = this.delegate.createChildInjector((Iterable) iterable);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return createChildInjector;
    }

    public Injector createChildInjector(Module... moduleArr) {
        Injector createChildInjector;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                createChildInjector = this.delegate.createChildInjector(moduleArr);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return createChildInjector;
    }

    public <T> List<Binding<T>> findBindingsByType(TypeLiteral<T> typeLiteral) {
        List<Binding<T>> findBindingsByType;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                findBindingsByType = this.delegate.findBindingsByType(typeLiteral);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return findBindingsByType;
    }

    public Map<Key<?>, Binding<?>> getAllBindings() {
        Map<Key<?>, Binding<?>> allBindings;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                allBindings = this.delegate.getAllBindings();
            } finally {
                this.scope.exit(this.context);
            }
        }
        return allBindings;
    }

    public <T> Binding<T> getBinding(Key<T> key) {
        Binding<T> binding;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                binding = this.delegate.getBinding((Key) key);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return binding;
    }

    public <T> Binding<T> getBinding(Class<T> cls) {
        Binding<T> binding;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                binding = this.delegate.getBinding((Class) cls);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return binding;
    }

    public Map<Key<?>, Binding<?>> getBindings() {
        Map<Key<?>, Binding<?>> bindings;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                bindings = this.delegate.getBindings();
            } finally {
                this.scope.exit(this.context);
            }
        }
        return bindings;
    }

    public <T> Binding<T> getExistingBinding(Key<T> key) {
        Binding<T> existingBinding;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                existingBinding = this.delegate.getExistingBinding(key);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return existingBinding;
    }

    public <T> T getInstance(Key<T> key) {
        T instance;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                instance = this.delegate.getInstance((Key) key);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return instance;
    }

    public <T> T getInstance(Class<T> cls) {
        T instance;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                instance = this.delegate.getInstance((Class) cls);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return instance;
    }

    public <T> MembersInjector<T> getMembersInjector(Class<T> cls) {
        MembersInjector<T> membersInjector;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                membersInjector = this.delegate.getMembersInjector((Class) cls);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return membersInjector;
    }

    public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
        MembersInjector<T> membersInjector;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                membersInjector = this.delegate.getMembersInjector((TypeLiteral) typeLiteral);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return membersInjector;
    }

    public Injector getParent() {
        Injector parent;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                parent = this.delegate.getParent();
            } finally {
                this.scope.exit(this.context);
            }
        }
        return parent;
    }

    public <T> Provider<T> getProvider(Key<T> key) {
        Provider<T> provider;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                provider = this.delegate.getProvider((Key) key);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return provider;
    }

    public <T> Provider<T> getProvider(Class<T> cls) {
        Provider<T> provider;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                provider = this.delegate.getProvider((Class) cls);
            } finally {
                this.scope.exit(this.context);
            }
        }
        return provider;
    }

    public Map<Class<? extends Annotation>, Scope> getScopeBindings() {
        Map<Class<? extends Annotation>, Scope> scopeBindings;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                scopeBindings = this.delegate.getScopeBindings();
            } finally {
                this.scope.exit(this.context);
            }
        }
        return scopeBindings;
    }

    public Set<TypeConverterBinding> getTypeConverterBindings() {
        Set<TypeConverterBinding> typeConverterBindings;
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                typeConverterBindings = this.delegate.getTypeConverterBindings();
            } finally {
                this.scope.exit(this.context);
            }
        }
        return typeConverterBindings;
    }

    public void injectMembers(Object obj) {
        injectMembersWithoutViews(obj);
    }

    public void injectMembersWithoutViews(Object obj) {
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                this.delegate.injectMembers(obj);
            } finally {
                this.scope.exit(this.context);
            }
        }
    }

    public void injectViewMembers(Object obj) {
        synchronized (ContextScope.class) {
            this.scope.enter(this.context);
            try {
                ViewMembersInjector.injectViews(obj);
            } finally {
                this.scope.exit(this.context);
            }
        }
    }
}
