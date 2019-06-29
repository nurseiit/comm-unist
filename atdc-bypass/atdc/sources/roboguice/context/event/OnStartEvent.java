package roboguice.context.event;

import android.content.Context;

public class OnStartEvent<T extends Context> {
    protected T context;

    public OnStartEvent(T t) {
        this.context = t;
    }

    public T getContext() {
        return this.context;
    }
}
