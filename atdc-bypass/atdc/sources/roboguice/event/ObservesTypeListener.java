package roboguice.event;

import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.InjectionListener;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import roboguice.event.eventListener.ObserverMethodListener;
import roboguice.event.eventListener.factory.EventListenerThreadingDecorator;

public class ObservesTypeListener implements TypeListener {
    protected Provider<EventManager> eventManagerProvider;
    private HierarchyTraversalFilter filter;
    protected EventListenerThreadingDecorator observerThreadingDecorator;

    public static class ContextObserverMethodInjector<I, T> implements InjectionListener<I> {
        protected Class<T> event;
        protected Provider<EventManager> eventManagerProvider;
        protected Method method;
        protected EventListenerThreadingDecorator observerThreadingDecorator;
        protected EventThread threadType;

        public ContextObserverMethodInjector(Provider<EventManager> provider, EventListenerThreadingDecorator eventListenerThreadingDecorator, Method method, Class<T> cls, EventThread eventThread) {
            this.observerThreadingDecorator = eventListenerThreadingDecorator;
            this.eventManagerProvider = provider;
            this.method = method;
            this.event = cls;
            this.threadType = eventThread;
        }

        public void afterInjection(I i) {
            ((EventManager) this.eventManagerProvider.get()).registerObserver(this.event, this.observerThreadingDecorator.decorate(this.threadType, new ObserverMethodListener(i, this.method)));
        }
    }

    public ObservesTypeListener(Provider<EventManager> provider, EventListenerThreadingDecorator eventListenerThreadingDecorator) {
        this.eventManagerProvider = provider;
        this.observerThreadingDecorator = eventListenerThreadingDecorator;
    }

    public <I> void hear(TypeLiteral<I> typeLiteral, TypeEncounter<I> typeEncounter) {
        if (this.filter == null) {
            this.filter = Guice.createHierarchyTraversalFilter();
        } else {
            this.filter.reset();
        }
        for (Class rawType = typeLiteral.getRawType(); isWorthScanning(rawType); rawType = rawType.getSuperclass()) {
            for (Method findContextObserver : this.filter.getAllMethods(Observes.class.getName(), rawType)) {
                findContextObserver(findContextObserver, typeEncounter);
            }
            for (Class allMethods : rawType.getInterfaces()) {
                for (Method findContextObserver2 : this.filter.getAllMethods(Observes.class.getName(), allMethods)) {
                    findContextObserver(findContextObserver2, typeEncounter);
                }
            }
        }
    }

    private boolean isWorthScanning(Class<?> cls) {
        return this.filter.isWorthScanningForMethods(Observes.class.getName(), cls);
    }

    /* Access modifiers changed, original: protected */
    public <I> void findContextObserver(Method method, TypeEncounter<I> typeEncounter) {
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        for (int i = 0; i < parameterAnnotations.length; i++) {
            Annotation[] annotationArr = parameterAnnotations[i];
            Class cls = method.getParameterTypes()[i];
            for (Annotation annotation : annotationArr) {
                if (annotation.annotationType().equals(Observes.class)) {
                    registerContextObserver(typeEncounter, method, cls, ((Observes) annotation).value());
                }
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public <I, T> void registerContextObserver(TypeEncounter<I> typeEncounter, Method method, Class<T> cls, EventThread eventThread) {
        checkMethodParameters(method);
        typeEncounter.register(new ContextObserverMethodInjector(this.eventManagerProvider, this.observerThreadingDecorator, method, cls, eventThread));
    }

    /* Access modifiers changed, original: protected */
    public void checkMethodParameters(Method method) {
        if (method.getParameterTypes().length > 1) {
            throw new RuntimeException("Annotation @Observes must only annotate one parameter, which must be the only parameter in the listener method.");
        }
    }
}
