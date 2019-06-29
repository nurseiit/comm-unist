package roboguice.event.eventListener;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import roboguice.event.EventListener;
import roboguice.event.eventListener.javaassist.RuntimeSupport;
import roboguice.util.Ln;

public class ObserverMethodListener<T> implements EventListener<T> {
    protected String descriptor;
    protected Object instance;
    protected Method method;

    public ObserverMethodListener(Object obj, Method method) {
        this.instance = obj;
        this.method = method;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(method.getName());
        stringBuilder.append(':');
        stringBuilder.append(RuntimeSupport.makeDescriptor(method));
        this.descriptor = stringBuilder.toString();
        method.setAccessible(true);
    }

    public void onEvent(Object obj) {
        try {
            this.method.invoke(this.instance, new Object[]{obj});
        } catch (InvocationTargetException e) {
            Ln.e(e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        }
    }

    public Object getInstance() {
        return this.instance;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ObserverMethodListener observerMethodListener = (ObserverMethodListener) obj;
        if (!this.descriptor == null ? this.descriptor.equals(observerMethodListener.descriptor) : observerMethodListener.descriptor == null) {
            return false;
        }
        if (this.instance == null ? observerMethodListener.instance != null : !this.instance.equals(observerMethodListener.instance)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.descriptor != null ? this.descriptor.hashCode() : 0) * 31;
        if (this.instance != null) {
            i = this.instance.hashCode();
        }
        return hashCode + i;
    }
}
