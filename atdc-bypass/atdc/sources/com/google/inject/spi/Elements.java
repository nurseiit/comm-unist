package com.google.inject.spi;

import com.google.inject.AbstractModule;
import com.google.inject.Binder;
import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Module;
import com.google.inject.PrivateBinder;
import com.google.inject.PrivateModule;
import com.google.inject.Provider;
import com.google.inject.Scope;
import com.google.inject.Stage;
import com.google.inject.TypeLiteral;
import com.google.inject.binder.AnnotatedBindingBuilder;
import com.google.inject.binder.AnnotatedConstantBindingBuilder;
import com.google.inject.binder.AnnotatedElementBuilder;
import com.google.inject.internal.AbstractBindingBuilder;
import com.google.inject.internal.BindingBuilder;
import com.google.inject.internal.ConstantBindingBuilderImpl;
import com.google.inject.internal.Errors;
import com.google.inject.internal.ExposureBuilder;
import com.google.inject.internal.InternalFlags;
import com.google.inject.internal.InternalFlags.IncludeStackTraceOption;
import com.google.inject.internal.PrivateElementsImpl;
import com.google.inject.internal.ProviderMethodsModule;
import com.google.inject.internal.util.SourceProvider;
import com.google.inject.internal.util.StackTraceElements;
import com.google.inject.matcher.Matcher;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Sets;

public final class Elements {
    private static final BindingTargetVisitor<Object, Object> GET_INSTANCE_VISITOR = new DefaultBindingTargetVisitor<Object, Object>() {
        public Object visit(InstanceBinding<?> instanceBinding) {
            return instanceBinding.getInstance();
        }

        /* Access modifiers changed, original: protected */
        public Object visitOther(Binding<?> binding) {
            throw new IllegalArgumentException();
        }
    };

    private static class ElementsAsModule implements Module {
        private final Iterable<? extends Element> elements;

        ElementsAsModule(Iterable<? extends Element> iterable) {
            this.elements = iterable;
        }

        public void configure(Binder binder) {
            for (Element applyTo : this.elements) {
                applyTo.applyTo(binder);
            }
        }
    }

    private static class RecordingBinder implements Binder, PrivateBinder {
        private final List<Element> elements;
        private ModuleSource moduleSource;
        private final Set<Module> modules;
        private final RecordingBinder parent;
        private final PrivateElementsImpl privateElements;
        private final Object source;
        private final SourceProvider sourceProvider;
        private final Stage stage;

        public String toString() {
            return "Binder";
        }

        private RecordingBinder(Stage stage) {
            this.moduleSource = null;
            this.stage = stage;
            this.modules = Sets.newHashSet();
            this.elements = Lists.newArrayList();
            this.source = null;
            this.sourceProvider = SourceProvider.DEFAULT_INSTANCE.plusSkippedClasses(Elements.class, RecordingBinder.class, AbstractModule.class, ConstantBindingBuilderImpl.class, AbstractBindingBuilder.class, BindingBuilder.class);
            this.parent = null;
            this.privateElements = null;
        }

        private RecordingBinder(RecordingBinder recordingBinder, Object obj, SourceProvider sourceProvider) {
            this.moduleSource = null;
            int i = 0;
            int i2 = obj == null ? 1 : 0;
            if (sourceProvider == null) {
                i = 1;
            }
            Preconditions.checkArgument(i ^ i2);
            this.stage = recordingBinder.stage;
            this.modules = recordingBinder.modules;
            this.elements = recordingBinder.elements;
            this.source = obj;
            this.moduleSource = recordingBinder.moduleSource;
            this.sourceProvider = sourceProvider;
            this.parent = recordingBinder.parent;
            this.privateElements = recordingBinder.privateElements;
        }

        private RecordingBinder(RecordingBinder recordingBinder, PrivateElementsImpl privateElementsImpl) {
            this.moduleSource = null;
            this.stage = recordingBinder.stage;
            this.modules = Sets.newHashSet();
            this.elements = privateElementsImpl.getElementsMutable();
            this.source = recordingBinder.source;
            this.moduleSource = recordingBinder.moduleSource;
            this.sourceProvider = recordingBinder.sourceProvider;
            this.parent = recordingBinder;
            this.privateElements = privateElementsImpl;
        }

        public void bindScope(Class<? extends Annotation> cls, Scope scope) {
            this.elements.add(new ScopeBinding(getElementSource(), cls, scope));
        }

        public void requestInjection(Object obj) {
            requestInjection(TypeLiteral.get(obj.getClass()), obj);
        }

        public <T> void requestInjection(TypeLiteral<T> typeLiteral, T t) {
            this.elements.add(new InjectionRequest(getElementSource(), typeLiteral, t));
        }

        public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
            MembersInjectorLookup membersInjectorLookup = new MembersInjectorLookup(getElementSource(), typeLiteral);
            this.elements.add(membersInjectorLookup);
            return membersInjectorLookup.getMembersInjector();
        }

        public <T> MembersInjector<T> getMembersInjector(Class<T> cls) {
            return getMembersInjector(TypeLiteral.get((Class) cls));
        }

        public void bindListener(Matcher<? super TypeLiteral<?>> matcher, TypeListener typeListener) {
            this.elements.add(new TypeListenerBinding(getElementSource(), typeListener, matcher));
        }

        public void bindListener(Matcher<? super Binding<?>> matcher, ProvisionListener... provisionListenerArr) {
            this.elements.add(new ProvisionListenerBinding(getElementSource(), matcher, provisionListenerArr));
        }

        public void requestStaticInjection(Class<?>... clsArr) {
            for (Class staticInjectionRequest : clsArr) {
                this.elements.add(new StaticInjectionRequest(getElementSource(), staticInjectionRequest));
            }
        }

        public void install(Module module) {
            if (this.modules.add(module)) {
                boolean z = module instanceof ProviderMethodsModule;
                if (!z) {
                    this.moduleSource = getModuleSource(module);
                }
                Binder newPrivateBinder = module instanceof PrivateModule ? newPrivateBinder() : this;
                try {
                    module.configure(newPrivateBinder);
                } catch (RuntimeException e) {
                    Collection messagesFromThrowable = Errors.getMessagesFromThrowable(e);
                    if (messagesFromThrowable.isEmpty()) {
                        addError(e);
                    } else {
                        this.elements.addAll(messagesFromThrowable);
                    }
                }
                newPrivateBinder.install(ProviderMethodsModule.forModule(module));
                if (!z) {
                    this.moduleSource = this.moduleSource.getParent();
                }
            }
        }

        public Stage currentStage() {
            return this.stage;
        }

        public void addError(String str, Object... objArr) {
            this.elements.add(new Message(getElementSource(), Errors.format(str, objArr)));
        }

        public void addError(Throwable th) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("An exception was caught and reported. Message: ");
            stringBuilder.append(th.getMessage());
            this.elements.add(new Message(ImmutableList.of(getElementSource()), stringBuilder.toString(), th));
        }

        public void addError(Message message) {
            this.elements.add(message);
        }

        public <T> AnnotatedBindingBuilder<T> bind(Key<T> key) {
            return new BindingBuilder(this, this.elements, getElementSource(), key);
        }

        public <T> AnnotatedBindingBuilder<T> bind(TypeLiteral<T> typeLiteral) {
            return bind(Key.get((TypeLiteral) typeLiteral));
        }

        public <T> AnnotatedBindingBuilder<T> bind(Class<T> cls) {
            return bind(Key.get((Class) cls));
        }

        public AnnotatedConstantBindingBuilder bindConstant() {
            return new ConstantBindingBuilderImpl(this, this.elements, getElementSource());
        }

        public <T> Provider<T> getProvider(Key<T> key) {
            ProviderLookup providerLookup = new ProviderLookup(getElementSource(), key);
            this.elements.add(providerLookup);
            return providerLookup.getProvider();
        }

        public <T> Provider<T> getProvider(Class<T> cls) {
            return getProvider(Key.get((Class) cls));
        }

        public void convertToTypes(Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter) {
            this.elements.add(new TypeConverterBinding(getElementSource(), matcher, typeConverter));
        }

        public RecordingBinder withSource(Object obj) {
            return obj == this.source ? this : new RecordingBinder(this, obj, null);
        }

        public RecordingBinder skipSources(Class... clsArr) {
            if (this.source != null) {
                return this;
            }
            return new RecordingBinder(this, null, this.sourceProvider.plusSkippedClasses(clsArr));
        }

        public PrivateBinder newPrivateBinder() {
            PrivateElementsImpl privateElementsImpl = new PrivateElementsImpl(getElementSource());
            RecordingBinder recordingBinder = new RecordingBinder(this, privateElementsImpl);
            this.elements.add(privateElementsImpl);
            return recordingBinder;
        }

        public void disableCircularProxies() {
            this.elements.add(new DisableCircularProxiesOption(getElementSource()));
        }

        public void requireExplicitBindings() {
            this.elements.add(new RequireExplicitBindingsOption(getElementSource()));
        }

        public void requireAtInjectOnConstructors() {
            this.elements.add(new RequireAtInjectOnConstructorsOption(getElementSource()));
        }

        public void requireExactBindingAnnotations() {
            this.elements.add(new RequireExactBindingAnnotationsOption(getElementSource()));
        }

        public void expose(Key<?> key) {
            exposeInternal(key);
        }

        public AnnotatedElementBuilder expose(Class<?> cls) {
            return exposeInternal(Key.get((Class) cls));
        }

        public AnnotatedElementBuilder expose(TypeLiteral<?> typeLiteral) {
            return exposeInternal(Key.get((TypeLiteral) typeLiteral));
        }

        private <T> AnnotatedElementBuilder exposeInternal(Key<T> key) {
            if (this.privateElements == null) {
                addError("Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders.", key);
                return new AnnotatedElementBuilder() {
                    public void annotatedWith(Class<? extends Annotation> cls) {
                    }

                    public void annotatedWith(Annotation annotation) {
                    }
                };
            }
            ExposureBuilder exposureBuilder = new ExposureBuilder(this, getElementSource(), key);
            this.privateElements.addExposureBuilder(exposureBuilder);
            return exposureBuilder;
        }

        private ModuleSource getModuleSource(Module module) {
            StackTraceElement[] partialCallStack;
            if (InternalFlags.getIncludeStackTraceOption() == IncludeStackTraceOption.COMPLETE) {
                partialCallStack = getPartialCallStack(new Throwable().getStackTrace());
            } else {
                partialCallStack = new StackTraceElement[0];
            }
            if (this.moduleSource == null) {
                return new ModuleSource(module, partialCallStack);
            }
            return this.moduleSource.createChild(module, partialCallStack);
        }

        private ElementSource getElementSource() {
            ElementSource elementSource;
            StackTraceElement[] stackTraceElementArr = new StackTraceElement[0];
            Object obj = this.source;
            StackTraceElement[] stackTraceElementArr2 = null;
            if (obj instanceof ElementSource) {
                ElementSource elementSource2 = (ElementSource) obj;
                elementSource = elementSource2;
                obj = elementSource2.getDeclaringSource();
            } else {
                elementSource = null;
            }
            IncludeStackTraceOption includeStackTraceOption = InternalFlags.getIncludeStackTraceOption();
            if (includeStackTraceOption == IncludeStackTraceOption.COMPLETE || (includeStackTraceOption == IncludeStackTraceOption.ONLY_FOR_DECLARING_SOURCE && obj == null)) {
                stackTraceElementArr2 = new Throwable().getStackTrace();
            }
            if (includeStackTraceOption == IncludeStackTraceOption.COMPLETE) {
                stackTraceElementArr = getPartialCallStack(stackTraceElementArr2);
            }
            if (obj == null) {
                if (includeStackTraceOption == IncludeStackTraceOption.COMPLETE || includeStackTraceOption == IncludeStackTraceOption.ONLY_FOR_DECLARING_SOURCE) {
                    obj = this.sourceProvider.get(stackTraceElementArr2);
                } else {
                    obj = this.sourceProvider.getFromClassNames(this.moduleSource.getModuleClassNames());
                }
            }
            return new ElementSource(elementSource, obj, this.moduleSource, stackTraceElementArr);
        }

        private StackTraceElement[] getPartialCallStack(StackTraceElement[] stackTraceElementArr) {
            int length = (stackTraceElementArr.length - (this.moduleSource != null ? this.moduleSource.getStackTraceSize() : 0)) - 1;
            StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[length];
            System.arraycopy(stackTraceElementArr, 1, stackTraceElementArr2, 0, length);
            return stackTraceElementArr2;
        }
    }

    public static List<Element> getElements(Module... moduleArr) {
        return getElements(Stage.DEVELOPMENT, Arrays.asList(moduleArr));
    }

    public static List<Element> getElements(Stage stage, Module... moduleArr) {
        return getElements(stage, Arrays.asList(moduleArr));
    }

    public static List<Element> getElements(Iterable<? extends Module> iterable) {
        return getElements(Stage.DEVELOPMENT, (Iterable) iterable);
    }

    public static List<Element> getElements(Stage stage, Iterable<? extends Module> iterable) {
        RecordingBinder recordingBinder = new RecordingBinder(stage, null);
        for (Module install : iterable) {
            recordingBinder.install(install);
        }
        StackTraceElements.clearCache();
        return Collections.unmodifiableList(recordingBinder.elements);
    }

    public static Module getModule(Iterable<? extends Element> iterable) {
        return new ElementsAsModule(iterable);
    }

    static <T> BindingTargetVisitor<T, T> getInstanceVisitor() {
        return GET_INSTANCE_VISITOR;
    }
}
