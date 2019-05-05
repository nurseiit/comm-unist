package com.google.inject.internal;

import com.google.inject.ConfigurationException;
import com.google.inject.CreationException;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.ProvisionException;
import com.google.inject.Scope;
import com.google.inject.TypeLiteral;
import com.google.inject.internal.util.Classes;
import com.google.inject.internal.util.SourceProvider;
import com.google.inject.internal.util.StackTraceElements;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.ElementSource;
import com.google.inject.spi.InjectionListener;
import com.google.inject.spi.InjectionPoint;
import com.google.inject.spi.Message;
import com.google.inject.spi.ScopeBinding;
import com.google.inject.spi.TypeConverterBinding;
import com.google.inject.spi.TypeListenerBinding;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Formatter;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Ordering;

public final class Errors implements Serializable {
    private static final String CONSTRUCTOR_RULES = "Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private.";
    private static final Collection<Converter<?>> converters = ImmutableList.of(new Converter<Class>(Class.class) {
        public String toString(Class cls) {
            return cls.getName();
        }
    }, new Converter<Member>(Member.class) {
        public String toString(Member member) {
            return Classes.toString(member);
        }
    }, new Converter<Key>(Key.class) {
        public String toString(Key key) {
            if (key.getAnnotationType() == null) {
                return key.getTypeLiteral().toString();
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(key.getTypeLiteral());
            stringBuilder.append(" annotated with ");
            stringBuilder.append(key.getAnnotation() != null ? key.getAnnotation() : key.getAnnotationType());
            return stringBuilder.toString();
        }
    });
    private List<Message> errors;
    private final Errors parent;
    private final Errors root;
    private final Object source;

    private static abstract class Converter<T> {
        final Class<T> type;

        public abstract String toString(T t);

        Converter(Class<T> cls) {
            this.type = cls;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean appliesTo(Object obj) {
            return obj != null && this.type.isAssignableFrom(obj.getClass());
        }

        /* Access modifiers changed, original: 0000 */
        public String convert(Object obj) {
            return toString(this.type.cast(obj));
        }
    }

    public Errors() {
        this.root = this;
        this.parent = null;
        this.source = SourceProvider.UNKNOWN_SOURCE;
    }

    public Errors(Object obj) {
        this.root = this;
        this.parent = null;
        this.source = obj;
    }

    private Errors(Errors errors, Object obj) {
        this.root = errors.root;
        this.parent = errors;
        this.source = obj;
    }

    public Errors withSource(Object obj) {
        return (obj == this.source || obj == SourceProvider.UNKNOWN_SOURCE) ? this : new Errors(this, obj);
    }

    public Errors missingImplementation(Key key) {
        return addMessage("No implementation for %s was bound.", key);
    }

    public Errors jitDisabled(Key key) {
        return addMessage("Explicit bindings are required and %s is not explicitly bound.", key);
    }

    public Errors atInjectRequired(Class cls) {
        return addMessage("Explicit @Inject annotations are required on constructors, but %s has no constructors annotated with @Inject.", cls);
    }

    public Errors converterReturnedNull(String str, Object obj, TypeLiteral<?> typeLiteral, TypeConverterBinding typeConverterBinding) {
        return addMessage("Received null converting '%s' (bound at %s) to %s%n using %s.", str, convert(obj), typeLiteral, typeConverterBinding);
    }

    public Errors conversionTypeError(String str, Object obj, TypeLiteral<?> typeLiteral, TypeConverterBinding typeConverterBinding, Object obj2) {
        return addMessage("Type mismatch converting '%s' (bound at %s) to %s%n using %s.%n Converter returned %s.", str, convert(obj), typeLiteral, typeConverterBinding, obj2);
    }

    public Errors conversionError(String str, Object obj, TypeLiteral<?> typeLiteral, TypeConverterBinding typeConverterBinding, RuntimeException runtimeException) {
        return errorInUserCode(runtimeException, "Error converting '%s' (bound at %s) to %s%n using %s.%n Reason: %s", str, convert(obj), typeLiteral, typeConverterBinding, runtimeException);
    }

    public Errors ambiguousTypeConversion(String str, Object obj, TypeLiteral<?> typeLiteral, TypeConverterBinding typeConverterBinding, TypeConverterBinding typeConverterBinding2) {
        return addMessage("Multiple converters can convert '%s' (bound at %s) to %s:%n %s and%n %s.%n Please adjust your type converter configuration to avoid overlapping matches.", str, convert(obj), typeLiteral, typeConverterBinding, typeConverterBinding2);
    }

    public Errors bindingToProvider() {
        return addMessage("Binding to Provider is not allowed.", new Object[0]);
    }

    public Errors subtypeNotProvided(Class<? extends Provider<?>> cls, Class<?> cls2) {
        return addMessage("%s doesn't provide instances of %s.", cls, cls2);
    }

    public Errors notASubtype(Class<?> cls, Class<?> cls2) {
        return addMessage("%s doesn't extend %s.", cls, cls2);
    }

    public Errors recursiveImplementationType() {
        return addMessage("@ImplementedBy points to the same class it annotates.", new Object[0]);
    }

    public Errors recursiveProviderType() {
        return addMessage("@ProvidedBy points to the same class it annotates.", new Object[0]);
    }

    public Errors missingRuntimeRetention(Class<? extends Annotation> cls) {
        return addMessage(format("Please annotate %s with @Retention(RUNTIME).", cls), new Object[0]);
    }

    public Errors missingScopeAnnotation(Class<? extends Annotation> cls) {
        return addMessage(format("Please annotate %s with @ScopeAnnotation.", cls), new Object[0]);
    }

    public Errors optionalConstructor(Constructor constructor) {
        return addMessage("%s is annotated @Inject(optional=true), but constructors cannot be optional.", constructor);
    }

    public Errors cannotBindToGuiceType(String str) {
        return addMessage("Binding to core guice framework type is not allowed: %s.", str);
    }

    public Errors scopeNotFound(Class<? extends Annotation> cls) {
        return addMessage("No scope is bound to %s.", cls);
    }

    public Errors scopeAnnotationOnAbstractType(Class<? extends Annotation> cls, Class<?> cls2, Object obj) {
        return addMessage("%s is annotated with %s, but scope annotations are not supported for abstract types.%n Bound at %s.", cls2, cls, convert(obj));
    }

    public Errors misplacedBindingAnnotation(Member member, Annotation annotation) {
        return addMessage("%s is annotated with %s, but binding annotations should be applied to its parameters instead.", member, annotation);
    }

    public Errors missingConstructor(Class<?> cls) {
        return addMessage("Could not find a suitable constructor in %s. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private.", cls);
    }

    public Errors tooManyConstructors(Class<?> cls) {
        return addMessage("%s has more than one constructor annotated with @Inject. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private.", cls);
    }

    public Errors constructorNotDefinedByType(Constructor<?> constructor, TypeLiteral<?> typeLiteral) {
        return addMessage("%s does not define %s", typeLiteral, constructor);
    }

    public Errors duplicateScopes(ScopeBinding scopeBinding, Class<? extends Annotation> cls, Scope scope) {
        return addMessage("Scope %s is already bound to %s at %s.%n Cannot bind %s.", scopeBinding.getScope(), cls, scopeBinding.getSource(), scope);
    }

    public Errors voidProviderMethod() {
        return addMessage("Provider methods must return a value. Do not return void.", new Object[0]);
    }

    public Errors missingConstantValues() {
        return addMessage("Missing constant value. Please call to(...).", new Object[0]);
    }

    public Errors cannotInjectInnerClass(Class<?> cls) {
        return addMessage("Injecting into inner classes is not supported.  Please use a 'static' class (top-level or nested) instead of %s.", cls);
    }

    public Errors duplicateBindingAnnotations(Member member, Class<? extends Annotation> cls, Class<? extends Annotation> cls2) {
        return addMessage("%s has more than one annotation annotated with @BindingAnnotation: %s and %s", member, cls, cls2);
    }

    public Errors staticInjectionOnInterface(Class<?> cls) {
        return addMessage("%s is an interface, but interfaces have no static injection points.", cls);
    }

    public Errors cannotInjectFinalField(Field field) {
        return addMessage("Injected field %s cannot be final.", field);
    }

    public Errors cannotInjectAbstractMethod(Method method) {
        return addMessage("Injected method %s cannot be abstract.", method);
    }

    public Errors cannotInjectNonVoidMethod(Method method) {
        return addMessage("Injected method %s must return void.", method);
    }

    public Errors cannotInjectMethodWithTypeParameters(Method method) {
        return addMessage("Injected method %s cannot declare type parameters of its own.", method);
    }

    public Errors duplicateScopeAnnotations(Class<? extends Annotation> cls, Class<? extends Annotation> cls2) {
        return addMessage("More than one scope annotation was found: %s and %s.", cls, cls2);
    }

    public Errors recursiveBinding() {
        return addMessage("Binding points to itself.", new Object[0]);
    }

    public Errors bindingAlreadySet(Key<?> key, Object obj) {
        return addMessage("A binding to %s was already configured at %s.", key, convert(obj));
    }

    public Errors jitBindingAlreadySet(Key<?> key) {
        return addMessage("A just-in-time binding to %s was already configured on a parent injector.", key);
    }

    public Errors childBindingAlreadySet(Key<?> key, Set<Object> set) {
        Formatter formatter = new Formatter();
        for (Object obj : set) {
            if (obj == null) {
                formatter.format("%n    (bound by a just-in-time binding)", new Object[0]);
            } else {
                formatter.format("%n    bound at %s", new Object[]{r7.next()});
            }
        }
        return addMessage("Unable to create binding for %s. It was already configured on one or more child injectors or private modules%s%n  If it was in a PrivateModule, did you forget to expose the binding?", key, formatter.out());
    }

    public Errors errorCheckingDuplicateBinding(Key<?> key, Object obj, Throwable th) {
        return addMessage("A binding to %s was already configured at %s and an error was thrown while checking duplicate bindings.  Error: %s", key, convert(obj), th);
    }

    public Errors errorInjectingMethod(Throwable th) {
        return errorInUserCode(th, "Error injecting method, %s", th);
    }

    public Errors errorNotifyingTypeListener(TypeListenerBinding typeListenerBinding, TypeLiteral<?> typeLiteral, Throwable th) {
        return errorInUserCode(th, "Error notifying TypeListener %s (bound at %s) of %s.%n Reason: %s", typeListenerBinding.getListener(), convert(typeListenerBinding.getSource()), typeLiteral, th);
    }

    public Errors errorInjectingConstructor(Throwable th) {
        return errorInUserCode(th, "Error injecting constructor, %s", th);
    }

    public Errors errorInProvider(RuntimeException runtimeException) {
        return errorInUserCode(unwrap(runtimeException), "Error in custom provider, %s", unwrap(runtimeException));
    }

    public Errors errorInUserInjector(MembersInjector<?> membersInjector, TypeLiteral<?> typeLiteral, RuntimeException runtimeException) {
        return errorInUserCode(runtimeException, "Error injecting %s using %s.%n Reason: %s", typeLiteral, membersInjector, runtimeException);
    }

    public Errors errorNotifyingInjectionListener(InjectionListener<?> injectionListener, TypeLiteral<?> typeLiteral, RuntimeException runtimeException) {
        return errorInUserCode(runtimeException, "Error notifying InjectionListener %s of %s.%n Reason: %s", injectionListener, typeLiteral, runtimeException);
    }

    public Errors exposedButNotBound(Key<?> key) {
        return addMessage("Could not expose() %s, it must be explicitly bound.", key);
    }

    public Errors keyNotFullySpecified(TypeLiteral<?> typeLiteral) {
        return addMessage("%s cannot be used as a key; It is not fully specified.", typeLiteral);
    }

    public Errors errorEnhancingClass(Class<?> cls, Throwable th) {
        return errorInUserCode(th, "Unable to method intercept: %s", cls);
    }

    public static Collection<Message> getMessagesFromThrowable(Throwable th) {
        if (th instanceof ProvisionException) {
            return ((ProvisionException) th).getErrorMessages();
        }
        if (th instanceof ConfigurationException) {
            return ((ConfigurationException) th).getErrorMessages();
        }
        if (th instanceof CreationException) {
            return ((CreationException) th).getErrorMessages();
        }
        return ImmutableSet.of();
    }

    public Errors errorInUserCode(Throwable th, String str, Object... objArr) {
        Collection messagesFromThrowable = getMessagesFromThrowable(th);
        if (messagesFromThrowable.isEmpty()) {
            return addMessage(th, str, objArr);
        }
        return merge(messagesFromThrowable);
    }

    private Throwable unwrap(RuntimeException runtimeException) {
        return runtimeException instanceof UnhandledCheckedUserException ? runtimeException.getCause() : runtimeException;
    }

    public Errors cannotInjectRawProvider() {
        return addMessage("Cannot inject a Provider that has no type parameter", new Object[0]);
    }

    public Errors cannotInjectRawMembersInjector() {
        return addMessage("Cannot inject a MembersInjector that has no type parameter", new Object[0]);
    }

    public Errors cannotInjectTypeLiteralOf(Type type) {
        return addMessage("Cannot inject a TypeLiteral of %s", type);
    }

    public Errors cannotInjectRawTypeLiteral() {
        return addMessage("Cannot inject a TypeLiteral that has no type parameter", new Object[0]);
    }

    public Errors cannotSatisfyCircularDependency(Class<?> cls) {
        return addMessage("Tried proxying %s to support a circular dependency, but it is not an interface.", cls);
    }

    public Errors circularProxiesDisabled(Class<?> cls) {
        return addMessage("Tried proxying %s to support a circular dependency, but circular proxies are disabled.", cls);
    }

    public void throwCreationExceptionIfErrorsExist() {
        if (hasErrors()) {
            throw new CreationException(getMessages());
        }
    }

    public void throwConfigurationExceptionIfErrorsExist() {
        if (hasErrors()) {
            throw new ConfigurationException(getMessages());
        }
    }

    public void throwProvisionExceptionIfErrorsExist() {
        if (hasErrors()) {
            throw new ProvisionException(getMessages());
        }
    }

    private Message merge(Message message) {
        ArrayList newArrayList = Lists.newArrayList();
        newArrayList.addAll(getSources());
        newArrayList.addAll(message.getSources());
        return new Message(newArrayList, message.getMessage(), message.getCause());
    }

    public Errors merge(Collection<Message> collection) {
        for (Message merge : collection) {
            addMessage(merge(merge));
        }
        return this;
    }

    public Errors merge(Errors errors) {
        if (errors.root == this.root || errors.root.errors == null) {
            return this;
        }
        merge(errors.root.errors);
        return this;
    }

    public List<Object> getSources() {
        ArrayList newArrayList = Lists.newArrayList();
        for (Errors errors = this; errors != null; errors = errors.parent) {
            if (errors.source != SourceProvider.UNKNOWN_SOURCE) {
                newArrayList.add(0, errors.source);
            }
        }
        return newArrayList;
    }

    public void throwIfNewErrors(int i) throws ErrorsException {
        if (size() != i) {
            throw toException();
        }
    }

    public ErrorsException toException() {
        return new ErrorsException(this);
    }

    public boolean hasErrors() {
        return this.root.errors != null;
    }

    public Errors addMessage(String str, Object... objArr) {
        return addMessage(null, str, objArr);
    }

    private Errors addMessage(Throwable th, String str, Object... objArr) {
        addMessage(new Message(getSources(), format(str, objArr), th));
        return this;
    }

    public Errors addMessage(Message message) {
        if (this.root.errors == null) {
            this.root.errors = Lists.newArrayList();
        }
        this.root.errors.add(message);
        return this;
    }

    public static String format(String str, Object... objArr) {
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = convert(objArr[i]);
        }
        return String.format(str, objArr);
    }

    public List<Message> getMessages() {
        if (this.root.errors == null) {
            return ImmutableList.of();
        }
        return new Ordering<Message>() {
            public int compare(Message message, Message message2) {
                return message.getSource().compareTo(message2.getSource());
            }
        }.sortedCopy(this.root.errors);
    }

    public static String format(String str, Collection<Message> collection) {
        Formatter format = new Formatter().format(str, new Object[0]).format(":%n%n", new Object[0]);
        Object obj = getOnlyCause(collection) == null ? 1 : null;
        int i = 1;
        for (Message message : collection) {
            r7 = new Object[2];
            int i2 = i + 1;
            r7[0] = Integer.valueOf(i);
            r7[1] = message.getMessage();
            format.format("%s) %s%n", r7);
            List sources = message.getSources();
            for (int size = sources.size() - 1; size >= 0; size--) {
                formatSource(format, sources.get(size));
            }
            Throwable cause = message.getCause();
            if (!(obj == null || cause == null)) {
                cause.printStackTrace(new PrintWriter(new StringWriter()));
                format.format("Caused by: %s", new Object[]{r5.getBuffer()});
            }
            format.format("%n", new Object[0]);
            i = i2;
        }
        if (collection.size() == 1) {
            format.format("1 error", new Object[0]);
        } else {
            format.format("%s errors", new Object[]{Integer.valueOf(collection.size())});
        }
        return format.toString();
    }

    public <T> T checkForNull(T t, Object obj, Dependency<?> dependency) throws ErrorsException {
        if (t != null || dependency.isNullable()) {
            return t;
        }
        String stringBuilder;
        int parameterIndex = dependency.getParameterIndex();
        if (parameterIndex != -1) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("parameter ");
            stringBuilder2.append(parameterIndex);
            stringBuilder2.append(" of ");
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = "";
        }
        addMessage("null returned by binding at %s%n but %s%s is not @Nullable", obj, stringBuilder, dependency.getInjectionPoint().getMember());
        throw toException();
    }

    public static Throwable getOnlyCause(Collection<Message> collection) {
        Throwable th = null;
        for (Message cause : collection) {
            Throwable cause2 = cause.getCause();
            if (cause2 != null) {
                if (th != null) {
                    return null;
                }
                th = cause2;
            }
        }
        return th;
    }

    public int size() {
        return this.root.errors == null ? 0 : this.root.errors.size();
    }

    public static Object convert(Object obj) {
        ElementSource elementSource;
        if (obj instanceof ElementSource) {
            ElementSource elementSource2 = (ElementSource) obj;
            elementSource = elementSource2;
            obj = elementSource2.getDeclaringSource();
        } else {
            elementSource = null;
        }
        return convert(obj, elementSource);
    }

    public static Object convert(Object obj, ElementSource elementSource) {
        for (Converter converter : converters) {
            if (converter.appliesTo(obj)) {
                return appendModules(converter.convert(obj), elementSource);
            }
        }
        return appendModules(obj, elementSource);
    }

    private static Object appendModules(Object obj, ElementSource elementSource) {
        String moduleSourceString = moduleSourceString(elementSource);
        if (moduleSourceString.length() == 0) {
            return obj;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(obj);
        stringBuilder.append(moduleSourceString);
        return stringBuilder.toString();
    }

    private static String moduleSourceString(ElementSource elementSource) {
        if (elementSource == null) {
            return "";
        }
        ArrayList newArrayList = Lists.newArrayList(elementSource.getModuleClassNames());
        while (elementSource.getOriginalElementSource() != null) {
            elementSource = elementSource.getOriginalElementSource();
            newArrayList.addAll(0, elementSource.getModuleClassNames());
        }
        if (newArrayList.size() <= 1) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(" (via modules: ");
        for (int size = newArrayList.size() - 1; size >= 0; size--) {
            stringBuilder.append((String) newArrayList.get(size));
            if (size != 0) {
                stringBuilder.append(" -> ");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public static void formatSource(Formatter formatter, Object obj) {
        ElementSource elementSource;
        if (obj instanceof ElementSource) {
            ElementSource elementSource2 = (ElementSource) obj;
            elementSource = elementSource2;
            obj = elementSource2.getDeclaringSource();
        } else {
            elementSource = null;
        }
        formatSource(formatter, obj, elementSource);
    }

    public static void formatSource(Formatter formatter, Object obj, ElementSource elementSource) {
        String moduleSourceString = moduleSourceString(elementSource);
        if (obj instanceof Dependency) {
            Dependency dependency = (Dependency) obj;
            InjectionPoint injectionPoint = dependency.getInjectionPoint();
            if (injectionPoint != null) {
                formatInjectionPoint(formatter, dependency, injectionPoint, elementSource);
            } else {
                formatSource(formatter, dependency.getKey(), elementSource);
            }
        } else if (obj instanceof InjectionPoint) {
            formatInjectionPoint(formatter, null, (InjectionPoint) obj, elementSource);
        } else if (obj instanceof Class) {
            formatter.format("  at %s%s%n", new Object[]{StackTraceElements.forType((Class) obj), moduleSourceString});
        } else if (obj instanceof Member) {
            formatter.format("  at %s%s%n", new Object[]{StackTraceElements.forMember((Member) obj), moduleSourceString});
        } else if (obj instanceof TypeLiteral) {
            formatter.format("  while locating %s%s%n", new Object[]{obj, moduleSourceString});
        } else if (obj instanceof Key) {
            formatter.format("  while locating %s%n", new Object[]{convert((Key) obj, elementSource)});
        } else {
            formatter.format("  at %s%s%n", new Object[]{obj, moduleSourceString});
        }
    }

    public static void formatInjectionPoint(Formatter formatter, Dependency<?> dependency, InjectionPoint injectionPoint, ElementSource elementSource) {
        if (Classes.memberType(injectionPoint.getMember()) == Field.class) {
            formatter.format("  while locating %s%n", new Object[]{convert(((Dependency) injectionPoint.getDependencies().get(0)).getKey(), elementSource)});
            formatter.format("    for field at %s%n", new Object[]{StackTraceElements.forMember(r0)});
        } else if (dependency != null) {
            formatter.format("  while locating %s%n", new Object[]{convert(dependency.getKey(), elementSource)});
            formatter.format("    for parameter %s at %s%n", new Object[]{Integer.valueOf(dependency.getParameterIndex()), StackTraceElements.forMember(r0)});
        } else {
            formatSource(formatter, injectionPoint.getMember());
        }
    }
}
