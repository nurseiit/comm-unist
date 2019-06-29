package com.google.inject.internal;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.Binder;
import com.google.inject.Binding;
import com.google.inject.ConfigurationException;
import com.google.inject.ImplementedBy;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Module;
import com.google.inject.ProvidedBy;
import com.google.inject.Provider;
import com.google.inject.ProvisionException;
import com.google.inject.Scope;
import com.google.inject.Stage;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.util.SourceProvider;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.ConvertedConstantBinding;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.HasDependencies;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.ProviderBinding;
import com.google.inject.spi.TypeConverterBinding;
import com.google.inject.util.Providers;
import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;
import org.roboguice.shaded.goole.common.collect.ImmutableMap.Builder;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Maps;
import org.roboguice.shaded.goole.common.collect.Sets;

final class InjectorImpl implements Injector, Lookups {
    public static final TypeLiteral<String> STRING_TYPE = TypeLiteral.get(String.class);
    final BindingsMultimap bindingsMultimap = new BindingsMultimap();
    final ConstructorInjectorStore constructors = new ConstructorInjectorStore(this);
    final Set<Key<?>> failedJitBindings = Sets.newHashSet();
    final Map<Key<?>, BindingImpl<?>> jitBindings = Maps.newHashMap();
    private final ThreadLocal<Object[]> localContext;
    Lookups lookups = new DeferredLookups(this);
    MembersInjectorStore membersInjectorStore;
    final InjectorOptions options;
    final InjectorImpl parent;
    ProvisionListenerCallbackStore provisionListenerStore;
    final State state;

    private static class BindingsMultimap {
        final Map<TypeLiteral<?>, List<Binding<?>>> multimap;

        private BindingsMultimap() {
            this.multimap = Maps.newHashMap();
        }

        /* synthetic */ BindingsMultimap(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* Access modifiers changed, original: 0000 */
        public <T> void put(TypeLiteral<T> typeLiteral, Binding<T> binding) {
            List list = (List) this.multimap.get(typeLiteral);
            if (list == null) {
                list = Lists.newArrayList();
                this.multimap.put(typeLiteral, list);
            }
            list.add(binding);
        }

        /* Access modifiers changed, original: 0000 */
        public <T> List<Binding<T>> getAll(TypeLiteral<T> typeLiteral) {
            return ((List) this.multimap.get(typeLiteral)) != null ? Collections.unmodifiableList((List) this.multimap.get(typeLiteral)) : ImmutableList.of();
        }
    }

    static class InjectorOptions {
        final boolean atInjectRequired;
        final boolean disableCircularProxies;
        final boolean exactBindingAnnotationsRequired;
        final boolean jitDisabled;
        final Stage stage;

        InjectorOptions(Stage stage, boolean z, boolean z2, boolean z3, boolean z4) {
            this.stage = stage;
            this.jitDisabled = z;
            this.disableCircularProxies = z2;
            this.atInjectRequired = z3;
            this.exactBindingAnnotationsRequired = z4;
        }

        public String toString() {
            return Objects.toStringHelper(getClass()).add("stage", this.stage).add("jitDisabled", this.jitDisabled).add("disableCircularProxies", this.disableCircularProxies).add("atInjectRequired", this.atInjectRequired).add("exactBindingAnnotationsRequired", this.exactBindingAnnotationsRequired).toString();
        }
    }

    enum JitLimitation {
        NO_JIT,
        EXISTING_JIT,
        NEW_OR_EXISTING_JIT
    }

    interface MethodInvoker {
        Object invoke(Object obj, Object... objArr) throws IllegalAccessException, InvocationTargetException;
    }

    private static class ConvertedConstantBindingImpl<T> extends BindingImpl<T> implements ConvertedConstantBinding<T> {
        final Binding<String> originalBinding;
        final Provider<T> provider;
        final TypeConverterBinding typeConverterBinding;
        final T value;

        ConvertedConstantBindingImpl(InjectorImpl injectorImpl, Key<T> key, T t, Binding<String> binding, TypeConverterBinding typeConverterBinding) {
            super(injectorImpl, key, binding.getSource(), new ConstantFactory(Initializables.of(t)), Scoping.UNSCOPED);
            this.value = t;
            this.provider = Providers.of(t);
            this.originalBinding = binding;
            this.typeConverterBinding = typeConverterBinding;
        }

        public Provider<T> getProvider() {
            return this.provider;
        }

        public <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor) {
            return bindingTargetVisitor.visit((ConvertedConstantBinding) this);
        }

        public T getValue() {
            return this.value;
        }

        public TypeConverterBinding getTypeConverterBinding() {
            return this.typeConverterBinding;
        }

        public Key<String> getSourceKey() {
            return this.originalBinding.getKey();
        }

        public Set<Dependency<?>> getDependencies() {
            return ImmutableSet.of(Dependency.get(getSourceKey()));
        }

        public void applyTo(Binder binder) {
            throw new UnsupportedOperationException("This element represents a synthetic binding.");
        }

        public String toString() {
            return Objects.toStringHelper(ConvertedConstantBinding.class).add("key", getKey()).add("sourceKey", getSourceKey()).add(Param.VALUE, this.value).toString();
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof ConvertedConstantBindingImpl)) {
                return false;
            }
            ConvertedConstantBindingImpl convertedConstantBindingImpl = (ConvertedConstantBindingImpl) obj;
            if (getKey().equals(convertedConstantBindingImpl.getKey()) && getScoping().equals(convertedConstantBindingImpl.getScoping()) && Objects.equal(this.value, convertedConstantBindingImpl.value)) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return Objects.hashCode(getKey(), getScoping(), this.value);
        }
    }

    private static class ProviderBindingImpl<T> extends BindingImpl<Provider<T>> implements ProviderBinding<Provider<T>>, HasDependencies {
        final BindingImpl<T> providedBinding;

        ProviderBindingImpl(InjectorImpl injectorImpl, Key<Provider<T>> key, Binding<T> binding) {
            super(injectorImpl, key, binding.getSource(), createInternalFactory(binding), Scoping.UNSCOPED);
            this.providedBinding = (BindingImpl) binding;
        }

        static <T> InternalFactory<Provider<T>> createInternalFactory(Binding<T> binding) {
            final Provider provider = binding.getProvider();
            return new InternalFactory<Provider<T>>() {
                public Provider<T> get(Errors errors, InternalContext internalContext, Dependency dependency, boolean z) {
                    return provider;
                }
            };
        }

        public Key<? extends T> getProvidedKey() {
            return this.providedBinding.getKey();
        }

        public <V> V acceptTargetVisitor(BindingTargetVisitor<? super Provider<T>, V> bindingTargetVisitor) {
            return bindingTargetVisitor.visit((ProviderBinding) this);
        }

        public void applyTo(Binder binder) {
            throw new UnsupportedOperationException("This element represents a synthetic binding.");
        }

        public String toString() {
            return Objects.toStringHelper(ProviderBinding.class).add("key", getKey()).add("providedKey", getProvidedKey()).toString();
        }

        public Set<Dependency<?>> getDependencies() {
            return ImmutableSet.of(Dependency.get(getProvidedKey()));
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof ProviderBindingImpl)) {
                return false;
            }
            ProviderBindingImpl providerBindingImpl = (ProviderBindingImpl) obj;
            if (getKey().equals(providerBindingImpl.getKey()) && getScoping().equals(providerBindingImpl.getScoping()) && Objects.equal(this.providedBinding, providerBindingImpl.providedBinding)) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return Objects.hashCode(getKey(), getScoping(), this.providedBinding);
        }
    }

    InjectorImpl(InjectorImpl injectorImpl, State state, InjectorOptions injectorOptions) {
        this.parent = injectorImpl;
        this.state = state;
        this.options = injectorOptions;
        if (injectorImpl != null) {
            this.localContext = injectorImpl.localContext;
        } else {
            this.localContext = new ThreadLocal();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void index() {
        for (Binding index : this.state.getExplicitBindingsThisLevel().values()) {
            index(index);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void index(Binding<T> binding) {
        this.bindingsMultimap.put(binding.getKey().getTypeLiteral(), binding);
    }

    public <T> List<Binding<T>> findBindingsByType(TypeLiteral<T> typeLiteral) {
        return this.bindingsMultimap.getAll(typeLiteral);
    }

    public <T> BindingImpl<T> getBinding(Key<T> key) {
        Errors errors = new Errors(key);
        try {
            BindingImpl bindingOrThrow = getBindingOrThrow(key, errors, JitLimitation.EXISTING_JIT);
            errors.throwConfigurationExceptionIfErrorsExist();
            return bindingOrThrow;
        } catch (ErrorsException e) {
            throw new ConfigurationException(errors.merge(e.getErrors()).getMessages());
        }
    }

    /* JADX WARNING: Missing block: B:17:0x0029, code skipped:
            if (isProvider(r4) == false) goto L_0x004e;
     */
    /* JADX WARNING: Missing block: B:20:0x0038, code skipped:
            if (getExistingBinding(getProvidedKey(r4, new com.google.inject.internal.Errors())) == null) goto L_0x004e;
     */
    /* JADX WARNING: Missing block: B:22:0x003e, code skipped:
            return getBinding((com.google.inject.Key) r4);
     */
    /* JADX WARNING: Missing block: B:23:0x003f, code skipped:
            r4 = move-exception;
     */
    /* JADX WARNING: Missing block: B:25:0x004d, code skipped:
            throw new com.google.inject.ConfigurationException(r4.getErrors().getMessages());
     */
    /* JADX WARNING: Missing block: B:27:0x004f, code skipped:
            return null;
     */
    public <T> com.google.inject.internal.BindingImpl<T> getExistingBinding(com.google.inject.Key<T> r4) {
        /*
        r3 = this;
        r0 = r3.state;
        r0 = r0.getExplicitBinding(r4);
        if (r0 == 0) goto L_0x0009;
    L_0x0008:
        return r0;
    L_0x0009:
        r0 = r3.state;
        r0 = r0.lock();
        monitor-enter(r0);
        r1 = r3;
    L_0x0011:
        if (r1 == 0) goto L_0x0024;
    L_0x0013:
        r2 = r1.jitBindings;	 Catch:{ all -> 0x0022 }
        r2 = r2.get(r4);	 Catch:{ all -> 0x0022 }
        r2 = (com.google.inject.internal.BindingImpl) r2;	 Catch:{ all -> 0x0022 }
        if (r2 == 0) goto L_0x001f;
    L_0x001d:
        monitor-exit(r0);	 Catch:{ all -> 0x0022 }
        return r2;
    L_0x001f:
        r1 = r1.parent;	 Catch:{ all -> 0x0022 }
        goto L_0x0011;
    L_0x0022:
        r4 = move-exception;
        goto L_0x0050;
    L_0x0024:
        monitor-exit(r0);	 Catch:{ all -> 0x0022 }
        r0 = isProvider(r4);
        if (r0 == 0) goto L_0x004e;
    L_0x002b:
        r0 = new com.google.inject.internal.Errors;	 Catch:{ ErrorsException -> 0x003f }
        r0.<init>();	 Catch:{ ErrorsException -> 0x003f }
        r0 = getProvidedKey(r4, r0);	 Catch:{ ErrorsException -> 0x003f }
        r0 = r3.getExistingBinding(r0);	 Catch:{ ErrorsException -> 0x003f }
        if (r0 == 0) goto L_0x004e;
    L_0x003a:
        r4 = r3.getBinding(r4);	 Catch:{ ErrorsException -> 0x003f }
        return r4;
    L_0x003f:
        r4 = move-exception;
        r0 = new com.google.inject.ConfigurationException;
        r4 = r4.getErrors();
        r4 = r4.getMessages();
        r0.<init>(r4);
        throw r0;
    L_0x004e:
        r4 = 0;
        return r4;
    L_0x0050:
        monitor-exit(r0);	 Catch:{ all -> 0x0022 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.inject.internal.InjectorImpl.getExistingBinding(com.google.inject.Key):com.google.inject.internal.BindingImpl");
    }

    /* Access modifiers changed, original: 0000 */
    public <T> BindingImpl<T> getBindingOrThrow(Key<T> key, Errors errors, JitLimitation jitLimitation) throws ErrorsException {
        BindingImpl explicitBinding = this.state.getExplicitBinding(key);
        if (explicitBinding != null) {
            return explicitBinding;
        }
        return getJustInTimeBinding(key, errors, jitLimitation);
    }

    public <T> Binding<T> getBinding(Class<T> cls) {
        return getBinding(Key.get((Class) cls));
    }

    public Injector getParent() {
        return this.parent;
    }

    public Injector createChildInjector(Iterable<? extends Module> iterable) {
        return new InternalInjectorCreator().parentInjector(this).addModules(iterable).build();
    }

    public Injector createChildInjector(Module... moduleArr) {
        return createChildInjector(ImmutableList.copyOf((Object[]) moduleArr));
    }

    /* JADX WARNING: Missing block: B:25:0x0044, code skipped:
            return r3;
     */
    private <T> com.google.inject.internal.BindingImpl<T> getJustInTimeBinding(com.google.inject.Key<T> r5, com.google.inject.internal.Errors r6, com.google.inject.internal.InjectorImpl.JitLimitation r7) throws com.google.inject.internal.ErrorsException {
        /*
        r4 = this;
        r0 = isProvider(r5);
        if (r0 != 0) goto L_0x0015;
    L_0x0006:
        r0 = isTypeLiteral(r5);
        if (r0 != 0) goto L_0x0015;
    L_0x000c:
        r0 = isMembersInjector(r5);
        if (r0 == 0) goto L_0x0013;
    L_0x0012:
        goto L_0x0015;
    L_0x0013:
        r0 = 0;
        goto L_0x0016;
    L_0x0015:
        r0 = 1;
    L_0x0016:
        r1 = r4.state;
        r1 = r1.lock();
        monitor-enter(r1);
        r2 = r4;
    L_0x001e:
        if (r2 == 0) goto L_0x004a;
    L_0x0020:
        r3 = r2.jitBindings;	 Catch:{ all -> 0x0048 }
        r3 = r3.get(r5);	 Catch:{ all -> 0x0048 }
        r3 = (com.google.inject.internal.BindingImpl) r3;	 Catch:{ all -> 0x0048 }
        if (r3 == 0) goto L_0x0045;
    L_0x002a:
        r2 = r4.options;	 Catch:{ all -> 0x0048 }
        r2 = r2.jitDisabled;	 Catch:{ all -> 0x0048 }
        if (r2 == 0) goto L_0x0043;
    L_0x0030:
        r2 = com.google.inject.internal.InjectorImpl.JitLimitation.NO_JIT;	 Catch:{ all -> 0x0048 }
        if (r7 != r2) goto L_0x0043;
    L_0x0034:
        if (r0 != 0) goto L_0x0043;
    L_0x0036:
        r7 = r3 instanceof com.google.inject.internal.InjectorImpl.ConvertedConstantBindingImpl;	 Catch:{ all -> 0x0048 }
        if (r7 != 0) goto L_0x0043;
    L_0x003a:
        r5 = r6.jitDisabled(r5);	 Catch:{ all -> 0x0048 }
        r5 = r5.toException();	 Catch:{ all -> 0x0048 }
        throw r5;	 Catch:{ all -> 0x0048 }
    L_0x0043:
        monitor-exit(r1);	 Catch:{ all -> 0x0048 }
        return r3;
    L_0x0045:
        r2 = r2.parent;	 Catch:{ all -> 0x0048 }
        goto L_0x001e;
    L_0x0048:
        r5 = move-exception;
        goto L_0x0067;
    L_0x004a:
        r0 = r4.failedJitBindings;	 Catch:{ all -> 0x0048 }
        r0 = r0.contains(r5);	 Catch:{ all -> 0x0048 }
        if (r0 == 0) goto L_0x005d;
    L_0x0052:
        r0 = r6.hasErrors();	 Catch:{ all -> 0x0048 }
        if (r0 == 0) goto L_0x005d;
    L_0x0058:
        r5 = r6.toException();	 Catch:{ all -> 0x0048 }
        throw r5;	 Catch:{ all -> 0x0048 }
    L_0x005d:
        r0 = r4.options;	 Catch:{ all -> 0x0048 }
        r0 = r0.jitDisabled;	 Catch:{ all -> 0x0048 }
        r5 = r4.createJustInTimeBindingRecursive(r5, r6, r0, r7);	 Catch:{ all -> 0x0048 }
        monitor-exit(r1);	 Catch:{ all -> 0x0048 }
        return r5;
    L_0x0067:
        monitor-exit(r1);	 Catch:{ all -> 0x0048 }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.inject.internal.InjectorImpl.getJustInTimeBinding(com.google.inject.Key, com.google.inject.internal.Errors, com.google.inject.internal.InjectorImpl$JitLimitation):com.google.inject.internal.BindingImpl");
    }

    private static boolean isProvider(Key<?> key) {
        return key.getTypeLiteral().getRawType().equals(Provider.class);
    }

    private static boolean isTypeLiteral(Key<?> key) {
        return key.getTypeLiteral().getRawType().equals(TypeLiteral.class);
    }

    private static <T> Key<T> getProvidedKey(Key<Provider<T>> key, Errors errors) throws ErrorsException {
        Type type = key.getTypeLiteral().getType();
        if (type instanceof ParameterizedType) {
            return key.ofType(((ParameterizedType) type).getActualTypeArguments()[0]);
        }
        throw errors.cannotInjectRawProvider().toException();
    }

    private static boolean isMembersInjector(Key<?> key) {
        return key.getTypeLiteral().getRawType().equals(MembersInjector.class) && key.getAnnotationType() == null;
    }

    private <T> BindingImpl<MembersInjector<T>> createMembersInjectorBinding(Key<MembersInjector<T>> key, Errors errors) throws ErrorsException {
        Type type = key.getTypeLiteral().getType();
        if (type instanceof ParameterizedType) {
            MembersInjectorImpl membersInjectorImpl = this.membersInjectorStore.get(TypeLiteral.get(((ParameterizedType) type).getActualTypeArguments()[0]), errors);
            return new InstanceBindingImpl(this, key, SourceProvider.UNKNOWN_SOURCE, new ConstantFactory(Initializables.of(membersInjectorImpl)), ImmutableSet.of(), membersInjectorImpl);
        }
        throw errors.cannotInjectRawMembersInjector().toException();
    }

    private <T> BindingImpl<Provider<T>> createProviderBinding(Key<Provider<T>> key, Errors errors) throws ErrorsException {
        return new ProviderBindingImpl(this, key, getBindingOrThrow(getProvidedKey(key, errors), errors, JitLimitation.NO_JIT));
    }

    private <T> BindingImpl<T> convertConstantStringBinding(Key<T> key, Errors errors) throws ErrorsException {
        Errors errors2 = errors;
        Key<T> key2 = key;
        BindingImpl explicitBinding = this.state.getExplicitBinding(key2.ofType(STRING_TYPE));
        if (explicitBinding == null || !explicitBinding.isConstant()) {
            return null;
        }
        String str = (String) explicitBinding.getProvider().get();
        Object source = explicitBinding.getSource();
        TypeLiteral typeLiteral = key2.getTypeLiteral();
        TypeConverterBinding converter = this.state.getConverter(str, typeLiteral, errors2, source);
        if (converter == null) {
            return null;
        }
        try {
            Object convert = converter.getTypeConverter().convert(str, typeLiteral);
            if (convert == null) {
                throw errors2.converterReturnedNull(str, source, typeLiteral, converter).toException();
            } else if (typeLiteral.getRawType().isInstance(convert)) {
                return new ConvertedConstantBindingImpl(this, key2, convert, explicitBinding, converter);
            } else {
                throw errors2.conversionTypeError(str, source, typeLiteral, converter, convert).toException();
            }
        } catch (ErrorsException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw errors2.conversionError(str, source, typeLiteral, converter, e2).toException();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void initializeBinding(BindingImpl<T> bindingImpl, Errors errors) throws ErrorsException {
        if (bindingImpl instanceof DelayedInitialize) {
            ((DelayedInitialize) bindingImpl).initialize(this, errors);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void initializeJitBinding(BindingImpl<T> bindingImpl, Errors errors) throws ErrorsException {
        if (bindingImpl instanceof DelayedInitialize) {
            this.jitBindings.put(bindingImpl.getKey(), bindingImpl);
            try {
                ((DelayedInitialize) bindingImpl).initialize(this, errors);
            } catch (Throwable th) {
                removeFailedJitBinding(bindingImpl, null);
                cleanup(bindingImpl, new HashSet());
            }
        }
    }

    private boolean cleanup(BindingImpl<?> bindingImpl, Set<Key> set) {
        boolean z = false;
        for (Dependency dependency : getInternalDependencies(bindingImpl)) {
            Key key = dependency.getKey();
            InjectionPoint injectionPoint = dependency.getInjectionPoint();
            if (set.add(key)) {
                BindingImpl bindingImpl2 = (BindingImpl) this.jitBindings.get(key);
                if (bindingImpl2 != null) {
                    InjectionPoint internalConstructor;
                    boolean cleanup = cleanup(bindingImpl2, set);
                    if (bindingImpl2 instanceof ConstructorBindingImpl) {
                        ConstructorBindingImpl constructorBindingImpl = (ConstructorBindingImpl) bindingImpl2;
                        internalConstructor = constructorBindingImpl.getInternalConstructor();
                        if (!constructorBindingImpl.isInitialized()) {
                            cleanup = true;
                        }
                    } else {
                        internalConstructor = injectionPoint;
                    }
                    if (cleanup) {
                        removeFailedJitBinding(bindingImpl2, internalConstructor);
                    }
                } else if (this.state.getExplicitBinding(key) != null) {
                }
                z = true;
            }
        }
        return z;
    }

    private void removeFailedJitBinding(Binding<?> binding, InjectionPoint injectionPoint) {
        this.failedJitBindings.add(binding.getKey());
        this.jitBindings.remove(binding.getKey());
        this.membersInjectorStore.remove(binding.getKey().getTypeLiteral());
        this.provisionListenerStore.remove(binding);
        if (injectionPoint != null) {
            this.constructors.remove(injectionPoint);
        }
    }

    private Set<Dependency<?>> getInternalDependencies(BindingImpl<?> bindingImpl) {
        if (bindingImpl instanceof ConstructorBindingImpl) {
            return ((ConstructorBindingImpl) bindingImpl).getInternalDependencies();
        }
        if (bindingImpl instanceof HasDependencies) {
            return ((HasDependencies) bindingImpl).getDependencies();
        }
        return ImmutableSet.of();
    }

    /* Access modifiers changed, original: 0000 */
    public <T> BindingImpl<T> createUninitializedBinding(Key<T> key, Scoping scoping, Object obj, Errors errors, boolean z) throws ErrorsException {
        Class rawType = key.getTypeLiteral().getRawType();
        ImplementedBy implementedBy = (ImplementedBy) rawType.getAnnotation(ImplementedBy.class);
        if (rawType.isArray() || (rawType.isEnum() && implementedBy != null)) {
            throw errors.missingImplementation(key).toException();
        } else if (rawType == TypeLiteral.class) {
            return createTypeLiteralBinding(key, errors);
        } else {
            if (implementedBy != null) {
                Annotations.checkForMisplacedScopeAnnotations(rawType, obj, errors);
                return createImplementedByBinding(key, scoping, implementedBy, errors);
            }
            ProvidedBy providedBy = (ProvidedBy) rawType.getAnnotation(ProvidedBy.class);
            if (providedBy != null) {
                Annotations.checkForMisplacedScopeAnnotations(rawType, obj, errors);
                return createProvidedByBinding(key, scoping, providedBy, errors);
            }
            boolean z2 = z && this.options.jitDisabled;
            return ConstructorBindingImpl.create(this, key, null, obj, scoping, errors, z2, this.options.atInjectRequired);
        }
    }

    private <T> BindingImpl<TypeLiteral<T>> createTypeLiteralBinding(Key<TypeLiteral<T>> key, Errors errors) throws ErrorsException {
        Type type = key.getTypeLiteral().getType();
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getActualTypeArguments()[0];
            if ((type instanceof Class) || (type instanceof GenericArrayType) || (type instanceof ParameterizedType)) {
                TypeLiteral typeLiteral = TypeLiteral.get(type);
                return new InstanceBindingImpl(this, key, SourceProvider.UNKNOWN_SOURCE, new ConstantFactory(Initializables.of(typeLiteral)), ImmutableSet.of(), typeLiteral);
            }
            throw errors.cannotInjectTypeLiteralOf(type).toException();
        }
        throw errors.cannotInjectRawTypeLiteral().toException();
    }

    /* Access modifiers changed, original: 0000 */
    public <T> BindingImpl<T> createProvidedByBinding(Key<T> key, Scoping scoping, ProvidedBy providedBy, Errors errors) throws ErrorsException {
        Class rawType = key.getTypeLiteral().getRawType();
        Class value = providedBy.value();
        if (value == rawType) {
            throw errors.recursiveProviderType().toException();
        }
        Key key2 = Key.get(value);
        ProvidedByInternalFactory providedByInternalFactory = new ProvidedByInternalFactory(rawType, value, key2, this.options.disableCircularProxies ^ 1);
        LinkedProviderBindingImpl createWithInitializer = LinkedProviderBindingImpl.createWithInitializer(this, key, rawType, Scoping.scope(key, this, providedByInternalFactory, rawType, scoping), scoping, key2, providedByInternalFactory);
        providedByInternalFactory.setProvisionListenerCallback(this.provisionListenerStore.get(createWithInitializer));
        return createWithInitializer;
    }

    private <T> BindingImpl<T> createImplementedByBinding(Key<T> key, Scoping scoping, ImplementedBy implementedBy, Errors errors) throws ErrorsException {
        Class rawType = key.getTypeLiteral().getRawType();
        Class value = implementedBy.value();
        if (value == rawType) {
            throw errors.recursiveImplementationType().toException();
        } else if (rawType.isAssignableFrom(value)) {
            final Key key2 = Key.get(value);
            final BindingImpl bindingOrThrow = getBindingOrThrow(key2, errors, JitLimitation.NEW_OR_EXISTING_JIT);
            return new LinkedBindingImpl(this, key, rawType, Scoping.scope(key, this, new InternalFactory<T>() {
                public T get(Errors errors, InternalContext internalContext, Dependency<?> dependency, boolean z) throws ErrorsException {
                    internalContext.pushState(key2, bindingOrThrow.getSource());
                    try {
                        T t = bindingOrThrow.getInternalFactory().get(errors.withSource(key2), internalContext, dependency, true);
                        return t;
                    } finally {
                        internalContext.popState();
                    }
                }
            }, rawType, scoping), scoping, key2);
        } else {
            throw errors.notASubtype(value, rawType).toException();
        }
    }

    private <T> BindingImpl<T> createJustInTimeBindingRecursive(Key<T> key, Errors errors, boolean z, JitLimitation jitLimitation) throws ErrorsException {
        if (this.parent != null) {
            try {
                return this.parent.createJustInTimeBindingRecursive(key, new Errors(), z, this.parent.options.jitDisabled ? JitLimitation.NO_JIT : jitLimitation);
            } catch (ErrorsException unused) {
            }
        }
        Set sourcesForBlacklistedKey = this.state.getSourcesForBlacklistedKey(key);
        if (this.state.isBlacklisted(key)) {
            throw errors.childBindingAlreadySet(key, sourcesForBlacklistedKey).toException();
        }
        BindingImpl createJustInTimeBinding = createJustInTimeBinding(key, errors, z, jitLimitation);
        this.state.parent().blacklist(key, this.state, createJustInTimeBinding.getSource());
        this.jitBindings.put(key, createJustInTimeBinding);
        return createJustInTimeBinding;
    }

    private <T> BindingImpl<T> createJustInTimeBinding(Key<T> key, Errors errors, boolean z, JitLimitation jitLimitation) throws ErrorsException {
        int size = errors.size();
        Set sourcesForBlacklistedKey = this.state.getSourcesForBlacklistedKey(key);
        if (this.state.isBlacklisted(key)) {
            throw errors.childBindingAlreadySet(key, sourcesForBlacklistedKey).toException();
        } else if (isProvider(key)) {
            return createProviderBinding(key, errors);
        } else {
            if (isMembersInjector(key)) {
                return createMembersInjectorBinding(key, errors);
            }
            BindingImpl convertConstantStringBinding = convertConstantStringBinding(key, errors);
            if (convertConstantStringBinding != null) {
                return convertConstantStringBinding;
            }
            if (!isTypeLiteral(key) && z && jitLimitation != JitLimitation.NEW_OR_EXISTING_JIT) {
                throw errors.jitDisabled(key).toException();
            } else if (key.getAnnotationType() != null) {
                if (key.hasAttributes() && !this.options.exactBindingAnnotationsRequired) {
                    try {
                        return getBindingOrThrow(key.withoutAttributes(), new Errors(), JitLimitation.NO_JIT);
                    } catch (ErrorsException unused) {
                    }
                }
                throw errors.missingImplementation(key).toException();
            } else {
                Key<T> key2 = key;
                BindingImpl createUninitializedBinding = createUninitializedBinding(key2, Scoping.UNSCOPED, key.getTypeLiteral().getRawType(), errors, true);
                errors.throwIfNewErrors(size);
                initializeJitBinding(createUninitializedBinding, errors);
                return createUninitializedBinding;
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> InternalFactory<? extends T> getInternalFactory(Key<T> key, Errors errors, JitLimitation jitLimitation) throws ErrorsException {
        return getBindingOrThrow(key, errors, jitLimitation).getInternalFactory();
    }

    public Map<Key<?>, Binding<?>> getBindings() {
        return this.state.getExplicitBindingsThisLevel();
    }

    public Map<Key<?>, Binding<?>> getAllBindings() {
        ImmutableMap build;
        synchronized (this.state.lock()) {
            build = new Builder().putAll(this.state.getExplicitBindingsThisLevel()).putAll(this.jitBindings).build();
        }
        return build;
    }

    public Map<Class<? extends Annotation>, Scope> getScopeBindings() {
        return ImmutableMap.copyOf(this.state.getScopes());
    }

    public Set<TypeConverterBinding> getTypeConverterBindings() {
        return ImmutableSet.copyOf(this.state.getConvertersThisLevel());
    }

    /* Access modifiers changed, original: 0000 */
    public SingleParameterInjector<?>[] getParametersInjectors(List<Dependency<?>> list, Errors errors) throws ErrorsException {
        if (list.isEmpty()) {
            return null;
        }
        int size = errors.size();
        SingleParameterInjector[] singleParameterInjectorArr = new SingleParameterInjector[list.size()];
        int i = 0;
        for (Dependency dependency : list) {
            int i2 = i + 1;
            try {
                singleParameterInjectorArr[i] = createParameterInjector(dependency, errors.withSource(dependency));
            } catch (ErrorsException unused) {
            }
            i = i2;
        }
        errors.throwIfNewErrors(size);
        return singleParameterInjectorArr;
    }

    /* Access modifiers changed, original: 0000 */
    public <T> SingleParameterInjector<T> createParameterInjector(Dependency<T> dependency, Errors errors) throws ErrorsException {
        return new SingleParameterInjector(dependency, getBindingOrThrow(dependency.getKey(), errors, JitLimitation.NO_JIT));
    }

    public void injectMembers(Object obj) {
        getMembersInjector(obj.getClass()).injectMembers(obj);
    }

    public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
        Errors errors = new Errors(typeLiteral);
        try {
            return this.membersInjectorStore.get(typeLiteral, errors);
        } catch (ErrorsException e) {
            throw new ConfigurationException(errors.merge(e.getErrors()).getMessages());
        }
    }

    public <T> MembersInjector<T> getMembersInjector(Class<T> cls) {
        return getMembersInjector(TypeLiteral.get((Class) cls));
    }

    public <T> Provider<T> getProvider(Class<T> cls) {
        return getProvider(Key.get((Class) cls));
    }

    /* Access modifiers changed, original: 0000 */
    public <T> Provider<T> getProviderOrThrow(Key<T> key, Errors errors) throws ErrorsException {
        final BindingImpl bindingOrThrow = getBindingOrThrow(key, errors, JitLimitation.NO_JIT);
        final Dependency dependency = Dependency.get(key);
        return new Provider<T>() {
            public T get() {
                final Errors errors = new Errors(dependency);
                try {
                    Object callInContext = InjectorImpl.this.callInContext(new ContextualCallable<T>() {
                        public T call(InternalContext internalContext) throws ErrorsException {
                            Dependency pushDependency = internalContext.pushDependency(dependency, bindingOrThrow.getSource());
                            try {
                                T t = bindingOrThrow.getInternalFactory().get(errors, internalContext, dependency, false);
                                return t;
                            } finally {
                                internalContext.popStateAndSetDependency(pushDependency);
                            }
                        }
                    });
                    errors.throwIfNewErrors(0);
                    return callInContext;
                } catch (ErrorsException e) {
                    throw new ProvisionException(errors.merge(e.getErrors()).getMessages());
                }
            }

            public String toString() {
                return bindingOrThrow.getInternalFactory().toString();
            }
        };
    }

    public <T> Provider<T> getProvider(Key<T> key) {
        Errors errors = new Errors(key);
        try {
            Provider providerOrThrow = getProviderOrThrow(key, errors);
            errors.throwIfNewErrors(0);
            return providerOrThrow;
        } catch (ErrorsException e) {
            throw new ConfigurationException(errors.merge(e.getErrors()).getMessages());
        }
    }

    public <T> T getInstance(Key<T> key) {
        return getProvider((Key) key).get();
    }

    public <T> T getInstance(Class<T> cls) {
        return getProvider((Class) cls).get();
    }

    /* Access modifiers changed, original: 0000 */
    public <T> T callInContext(ContextualCallable<T> contextualCallable) throws ErrorsException {
        Object[] objArr = (Object[]) this.localContext.get();
        if (objArr == null) {
            objArr = new Object[1];
            this.localContext.set(objArr);
        }
        if (objArr[0] != null) {
            return contextualCallable.call((InternalContext) objArr[0]);
        }
        objArr[0] = new InternalContext();
        try {
            T call = contextualCallable.call((InternalContext) objArr[0]);
            return call;
        } finally {
            objArr[0] = null;
        }
    }

    public String toString() {
        return Objects.toStringHelper(Injector.class).add("bindings", this.state.getExplicitBindingsThisLevel().values()).toString();
    }
}
