package roboguice.context.event;

import android.content.Context;

public class OnDestroyEvent<T extends Context> {
    protected T context;

    public OnDestroyEvent(T t) {
        this.context = t;
    }

    public T getContext() {
        return this.context;
    }
}
