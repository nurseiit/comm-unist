package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Module;
import com.google.inject.Provider;
import com.google.inject.Scope;
import com.google.inject.Stage;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.util.Stopwatch;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.TypeConverterBinding;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.Iterables;

public final class InternalInjectorCreator {
    private final ProcessedBindingData bindingData = new ProcessedBindingData();
    private final Errors errors = new Errors();
    private final Initializer initializer = new Initializer();
    private final InjectionRequestProcessor injectionRequestProcessor = new InjectionRequestProcessor(this.errors, this.initializer);
    private final Builder shellBuilder = new Builder();
    private List<InjectorShell> shells;
    private final Stopwatch stopwatch = new Stopwatch();

    static class ToolStageInjector implements Injector {
        private final Injector delegateInjector;

        ToolStageInjector(Injector injector) {
            this.delegateInjector = injector;
        }

        public void injectMembers(Object obj) {
            throw new UnsupportedOperationException("Injector.injectMembers(Object) is not supported in Stage.TOOL");
        }

        public Map<Key<?>, Binding<?>> getBindings() {
            return this.delegateInjector.getBindings();
        }

        public Map<Key<?>, Binding<?>> getAllBindings() {
            return this.delegateInjector.getAllBindings();
        }

        public <T> Binding<T> getBinding(Key<T> key) {
            return this.delegateInjector.getBinding((Key) key);
        }

        public <T> Binding<T> getBinding(Class<T> cls) {
            return this.delegateInjector.getBinding((Class) cls);
        }

        public <T> Binding<T> getExistingBinding(Key<T> key) {
            return this.delegateInjector.getExistingBinding(key);
        }

        public <T> List<Binding<T>> findBindingsByType(TypeLiteral<T> typeLiteral) {
            return this.delegateInjector.findBindingsByType(typeLiteral);
        }

        public Injector getParent() {
            return this.delegateInjector.getParent();
        }

        public Injector createChildInjector(Iterable<? extends Module> iterable) {
            return this.delegateInjector.createChildInjector((Iterable) iterable);
        }

        public Injector createChildInjector(Module... moduleArr) {
            return this.delegateInjector.createChildInjector(moduleArr);
        }

        public Map<Class<? extends Annotation>, Scope> getScopeBindings() {
            return this.delegateInjector.getScopeBindings();
        }

        public Set<TypeConverterBinding> getTypeConverterBindings() {
            return this.delegateInjector.getTypeConverterBindings();
        }

        public <T> Provider<T> getProvider(Key<T> key) {
            throw new UnsupportedOperationException("Injector.getProvider(Key<T>) is not supported in Stage.TOOL");
        }

        public <T> Provider<T> getProvider(Class<T> cls) {
            throw new UnsupportedOperationException("Injector.getProvider(Class<T>) is not supported in Stage.TOOL");
        }

        public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
            throw new UnsupportedOperationException("Injector.getMembersInjector(TypeLiteral<T>) is not supported in Stage.TOOL");
        }

        public <T> MembersInjector<T> getMembersInjector(Class<T> cls) {
            throw new UnsupportedOperationException("Injector.getMembersInjector(Class<T>) is not supported in Stage.TOOL");
        }

        public <T> T getInstance(Key<T> key) {
            throw new UnsupportedOperationException("Injector.getInstance(Key<T>) is not supported in Stage.TOOL");
        }

        public <T> T getInstance(Class<T> cls) {
            throw new UnsupportedOperationException("Injector.getInstance(Class<T>) is not supported in Stage.TOOL");
        }
    }

    public InternalInjectorCreator stage(Stage stage) {
        this.shellBuilder.stage(stage);
        return this;
    }

    public InternalInjectorCreator parentInjector(InjectorImpl injectorImpl) {
        this.shellBuilder.parent(injectorImpl);
        return this;
    }

    public InternalInjectorCreator addModules(Iterable<? extends Module> iterable) {
        this.shellBuilder.addModules(iterable);
        return this;
    }

    public Injector build() {
        if (this.shellBuilder == null) {
            throw new AssertionError("Already built, builders are not reusable.");
        }
        synchronized (this.shellBuilder.lock()) {
            this.shells = this.shellBuilder.build(this.initializer, this.bindingData, this.stopwatch, this.errors);
            this.stopwatch.resetAndLog("Injector construction");
            initializeStatically();
        }
        injectDynamically();
        if (this.shellBuilder.getStage() == Stage.TOOL) {
            return new ToolStageInjector(primaryInjector());
        }
        return primaryInjector();
    }

    private void initializeStatically() {
        this.bindingData.initializeBindings();
        this.stopwatch.resetAndLog("Binding initialization");
        for (InjectorShell injector : this.shells) {
            injector.getInjector().index();
        }
        this.stopwatch.resetAndLog("Binding indexing");
        this.injectionRequestProcessor.process(this.shells);
        this.stopwatch.resetAndLog("Collecting injection requests");
        this.bindingData.runCreationListeners(this.errors);
        this.stopwatch.resetAndLog("Binding validation");
        this.injectionRequestProcessor.validate();
        this.stopwatch.resetAndLog("Static validation");
        this.initializer.validateOustandingInjections(this.errors);
        this.stopwatch.resetAndLog("Instance member validation");
        new LookupProcessor(this.errors).process(this.shells);
        for (InjectorShell injector2 : this.shells) {
            ((DeferredLookups) injector2.getInjector().lookups).initialize(this.errors);
        }
        this.stopwatch.resetAndLog("Provider verification");
        for (InjectorShell injector22 : this.shells) {
            if (!injector22.getElements().isEmpty()) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Failed to execute ");
                stringBuilder.append(injector22.getElements());
                throw new AssertionError(stringBuilder.toString());
            }
        }
        this.errors.throwCreationExceptionIfErrorsExist();
    }

    private Injector primaryInjector() {
        return ((InjectorShell) this.shells.get(0)).getInjector();
    }

    private void injectDynamically() {
        this.injectionRequestProcessor.injectMembers();
        this.stopwatch.resetAndLog("Static member injection");
        this.initializer.injectAll(this.errors);
        this.stopwatch.resetAndLog("Instance injection");
        this.errors.throwCreationExceptionIfErrorsExist();
        if (this.shellBuilder.getStage() != Stage.TOOL) {
            for (InjectorShell injector : this.shells) {
                loadEagerSingletons(injector.getInjector(), this.shellBuilder.getStage(), this.errors);
            }
            this.stopwatch.resetAndLog("Preloading singletons");
        }
        this.errors.throwCreationExceptionIfErrorsExist();
    }

    /* Access modifiers changed, original: 0000 */
    public void loadEagerSingletons(InjectorImpl injectorImpl, Stage stage, final Errors errors) {
        for (final BindingImpl bindingImpl : ImmutableList.copyOf(Iterables.concat(injectorImpl.state.getExplicitBindingsThisLevel().values(), injectorImpl.jitBindings.values()))) {
            if (isEagerSingleton(injectorImpl, bindingImpl, stage)) {
                try {
                    injectorImpl.callInContext(new ContextualCallable<Void>() {
                        Dependency<?> dependency = Dependency.get(bindingImpl.getKey());

                        public Void call(InternalContext internalContext) {
                            Dependency pushDependency = internalContext.pushDependency(this.dependency, bindingImpl.getSource());
                            Errors withSource = errors.withSource(this.dependency);
                            try {
                                bindingImpl.getInternalFactory().get(withSource, internalContext, this.dependency, false);
                            } catch (ErrorsException e) {
                                withSource.merge(e.getErrors());
                            } catch (Throwable th) {
                                internalContext.popStateAndSetDependency(pushDependency);
                            }
                            internalContext.popStateAndSetDependency(pushDependency);
                            return null;
                        }
                    });
                } catch (ErrorsException unused) {
                    throw new AssertionError();
                }
            }
        }
    }

    private boolean isEagerSingleton(InjectorImpl injectorImpl, BindingImpl<?> bindingImpl, Stage stage) {
        if (bindingImpl.getScoping().isEagerSingleton(stage)) {
            return true;
        }
        return bindingImpl instanceof LinkedBindingImpl ? isEagerSingleton(injectorImpl, injectorImpl.getBinding(((LinkedBindingImpl) bindingImpl).getLinkedKey()), stage) : false;
    }
}
