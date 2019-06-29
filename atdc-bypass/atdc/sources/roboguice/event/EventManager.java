package roboguice.event;

import android.content.Context;
import com.google.inject.Inject;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import roboguice.event.eventListener.ObserverMethodListener;
import roboguice.inject.ContextSingleton;

@ContextSingleton
public class EventManager {
    @Inject
    protected Context context;
    protected Map<Class<?>, Set<EventListener<?>>> registrations = new HashMap();

    public <T> void registerObserver(Class<T> cls, EventListener<?> eventListener) {
        Set set = (Set) this.registrations.get(cls);
        if (set == null) {
            set = new CopyOnWriteArraySet();
            this.registrations.put(cls, set);
        }
        set.add(eventListener);
    }

    public <T> void registerObserver(Object obj, Method method, Class<T> cls) {
        registerObserver(cls, new ObserverMethodListener(obj, method));
    }

    public <T> void unregisterObserver(Class<T> cls, EventListener<T> eventListener) {
        Set set = (Set) this.registrations.get(cls);
        if (set != null) {
            set.remove(eventListener);
        }
    }

    public <T> void unregisterObserver(Object obj, Class<T> cls) {
        Set<EventListener> set = (Set) this.registrations.get(cls);
        if (set != null) {
            Object obj2 = null;
            for (EventListener eventListener : set) {
                if (eventListener instanceof ObserverMethodListener) {
                    ObserverMethodListener observerMethodListener = (ObserverMethodListener) eventListener;
                    if (observerMethodListener.getInstance() == obj) {
                        obj2 = observerMethodListener;
                        break;
                    }
                }
            }
            if (obj2 != null) {
                set.remove(obj2);
            }
        }
    }

    public void fire(Object obj) {
        Set<EventListener> set = (Set) this.registrations.get(obj.getClass());
        if (set != null) {
            for (EventListener onEvent : set) {
                onEvent.onEvent(obj);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public Set<EventListener<?>> copyObservers(Set<EventListener<?>> set) {
        LinkedHashSet linkedHashSet;
        synchronized (set) {
            linkedHashSet = new LinkedHashSet(set);
        }
        return linkedHashSet;
    }

    public void destroy() {
        for (Entry value : this.registrations.entrySet()) {
            ((Set) value.getValue()).clear();
        }
        this.registrations.clear();
    }
}
