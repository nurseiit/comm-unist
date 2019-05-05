package roboguice.context.event;

import android.content.Context;
import android.os.Bundle;

public class OnCreateEvent<T extends Context> {
    protected T context;
    protected Bundle savedInstanceState;

    public OnCreateEvent(T t, Bundle bundle) {
        this.savedInstanceState = bundle;
        this.context = t;
    }

    public Bundle getSavedInstanceState() {
        return this.savedInstanceState;
    }

    public T getContext() {
        return this.context;
    }
}
