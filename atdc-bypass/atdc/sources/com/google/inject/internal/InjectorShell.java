package com.google.inject.internal;

import com.google.inject.Binder;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.Module;
import com.google.inject.Provider;
import com.google.inject.Scopes;
import com.google.inject.Singleton;
import com.google.inject.Stage;
import com.google.inject.internal.util.SourceProvider;
import com.google.inject.internal.util.Stopwatch;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.Element;
import com.google.inject.spi.Elements;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.PrivateElements;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;

final class InjectorShell {
    private final List<Element> elements;
    private final InjectorImpl injector;

    static class Builder {
        private final List<Element> elements = Lists.newArrayList();
        private final List<Module> modules = Lists.newArrayList();
        private InjectorOptions options;
        private InjectorImpl parent;
        private PrivateElementsImpl privateElements;
        private Stage stage;
        private State state;

        Builder() {
        }

        /* Access modifiers changed, original: 0000 */
        public Builder stage(Stage stage) {
            this.stage = stage;
            return this;
        }

        /* Access modifiers changed, original: 0000 */
        public Builder parent(InjectorImpl injectorImpl) {
            this.parent = injectorImpl;
            this.state = new InheritingState(injectorImpl.state);
            this.options = injectorImpl.options;
            this.stage = this.options.stage;
            return this;
        }

        /* Access modifiers changed, original: 0000 */
        public Builder privateElements(PrivateElements privateElements) {
            this.privateElements = (PrivateElementsImpl) privateElements;
            this.elements.addAll(privateElements.getElements());
            return this;
        }

        /* Access modifiers changed, original: 0000 */
        public void addModules(Iterable<? extends Module> iterable) {
            for (Module add : iterable) {
                this.modules.add(add);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public Stage getStage() {
            return this.options.stage;
        }

        /* Access modifiers changed, original: 0000 */
        public Object lock() {
            return getState().lock();
        }

        /* Access modifiers changed, original: 0000 */
        public List<InjectorShell> build(Initializer initializer, ProcessedBindingData processedBindingData, Stopwatch stopwatch, Errors errors) {
            boolean z = true;
            Preconditions.checkState(this.stage != null, "Stage not initialized");
            boolean z2 = this.privateElements == null || this.parent != null;
            Preconditions.checkState(z2, "PrivateElements with no parent");
            if (this.state == null) {
                z = false;
            }
            Preconditions.checkState(z, "no state. Did you remember to lock() ?");
            if (this.parent == null) {
                this.modules.add(0, new RootModule());
            }
            this.elements.addAll(Elements.getElements(this.stage, this.modules));
            InjectorOptionsProcessor injectorOptionsProcessor = new InjectorOptionsProcessor(errors);
            injectorOptionsProcessor.process(null, this.elements);
            this.options = injectorOptionsProcessor.getOptions(this.stage, this.options);
            InjectorImpl injectorImpl = new InjectorImpl(this.parent, this.state, this.options);
            if (this.privateElements != null) {
                this.privateElements.initInjector(injectorImpl);
            }
            if (this.parent == null) {
                TypeConverterBindingProcessor.prepareBuiltInConverters(injectorImpl);
            }
            stopwatch.resetAndLog("Module execution");
            new MessageProcessor(errors).process(injectorImpl, this.elements);
            new ListenerBindingProcessor(errors).process(injectorImpl, this.elements);
            injectorImpl.membersInjectorStore = new MembersInjectorStore(injectorImpl, injectorImpl.state.getTypeListenerBindings());
            injectorImpl.provisionListenerStore = new ProvisionListenerCallbackStore(injectorImpl.state.getProvisionListenerBindings());
            stopwatch.resetAndLog("TypeListeners & ProvisionListener creation");
            new ScopeBindingProcessor(errors).process(injectorImpl, this.elements);
            stopwatch.resetAndLog("Scopes creation");
            new TypeConverterBindingProcessor(errors).process(injectorImpl, this.elements);
            stopwatch.resetAndLog("Converters creation");
            InjectorShell.bindStage(injectorImpl, this.stage);
            InjectorShell.bindInjector(injectorImpl);
            InjectorShell.bindLogger(injectorImpl);
            new BindingProcessor(errors, initializer, processedBindingData).process(injectorImpl, this.elements);
            new UntargettedBindingProcessor(errors, processedBindingData).process(injectorImpl, this.elements);
            stopwatch.resetAndLog("Binding creation");
            ArrayList newArrayList = Lists.newArrayList();
            newArrayList.add(new InjectorShell(this, this.elements, injectorImpl));
            PrivateElementProcessor privateElementProcessor = new PrivateElementProcessor(errors);
            privateElementProcessor.process(injectorImpl, this.elements);
            for (Builder build : privateElementProcessor.getInjectorShellBuilders()) {
                newArrayList.addAll(build.build(initializer, processedBindingData, stopwatch, errors));
            }
            stopwatch.resetAndLog("Private environment creation");
            return newArrayList;
        }

        private State getState() {
            if (this.state == null) {
                this.state = new InheritingState(State.NONE);
            }
            return this.state;
        }
    }

    private static class RootModule implements Module {
        private RootModule() {
        }

        public void configure(Binder binder) {
            binder = binder.withSource(SourceProvider.UNKNOWN_SOURCE);
            binder.bindScope(Singleton.class, Scopes.SINGLETON);
            binder.bindScope(javax.inject.Singleton.class, Scopes.SINGLETON);
        }
    }

    private static class InjectorFactory implements InternalFactory<Injector>, Provider<Injector> {
        private final Injector injector;

        public String toString() {
            return "Provider<Injector>";
        }

        private InjectorFactory(Injector injector) {
            this.injector = injector;
        }

        public Injector get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
            return this.injector;
        }

        public Injector get() {
            return this.injector;
        }
    }

    private static class LoggerFactory implements InternalFactory<Logger>, Provider<Logger> {
        public String toString() {
            return "Provider<Logger>";
        }

        private LoggerFactory() {
        }

        public Logger get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) {
            InjectionPoint injectionPoint = dependency.getInjectionPoint();
            return injectionPoint == null ? Logger.getAnonymousLogger() : Logger.getLogger(injectionPoint.getMember().getDeclaringClass().getName());
        }

        public Logger get() {
            return Logger.getAnonymousLogger();
        }
    }

    private InjectorShell(Builder builder, List<Element> list, InjectorImpl injectorImpl) {
        this.elements = list;
        this.injector = injectorImpl;
    }

    /* Access modifiers changed, original: 0000 */
    public InjectorImpl getInjector() {
        return this.injector;
    }

    /* Access modifiers changed, original: 0000 */
    public List<Element> getElements() {
        return this.elements;
    }

    private static void bindInjector(InjectorImpl injectorImpl) {
        Key key = Key.get(Injector.class);
        InjectorFactory injectorFactory = new InjectorFactory(injectorImpl);
        injectorImpl.state.putBinding(key, new ProviderInstanceBindingImpl(injectorImpl, key, SourceProvider.UNKNOWN_SOURCE, injectorFactory, Scoping.UNSCOPED, injectorFactory, ImmutableSet.of()));
    }

    private static void bindLogger(InjectorImpl injectorImpl) {
        Key key = Key.get(Logger.class);
        LoggerFactory loggerFactory = new LoggerFactory();
        injectorImpl.state.putBinding(key, new ProviderInstanceBindingImpl(injectorImpl, key, SourceProvider.UNKNOWN_SOURCE, loggerFactory, Scoping.UNSCOPED, loggerFactory, ImmutableSet.of()));
    }

    private static void bindStage(InjectorImpl injectorImpl, Stage stage) {
        Key key = Key.get(Stage.class);
        injectorImpl.state.putBinding(key, new InstanceBindingImpl(injectorImpl, key, SourceProvider.UNKNOWN_SOURCE, new ConstantFactory(Initializables.of(stage)), ImmutableSet.of(), stage));
    }
}
