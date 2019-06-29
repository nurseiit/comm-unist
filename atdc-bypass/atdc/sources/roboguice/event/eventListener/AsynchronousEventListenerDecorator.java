package roboguice.event.eventListener;

import android.os.Handler;
import roboguice.event.EventListener;

public class AsynchronousEventListenerDecorator<T> implements EventListener<T> {
    protected EventListener<T> eventListener;
    protected Handler handler;

    public AsynchronousEventListenerDecorator(EventListener<T> eventListener) {
        this.eventListener = eventListener;
    }

    public AsynchronousEventListenerDecorator(Handler handler, EventListener<T> eventListener) {
        this.handler = handler;
        this.eventListener = eventListener;
    }

    public void onEvent(T t) {
        new RunnableAsyncTaskAdaptor(this.handler, new EventListenerRunnable(t, this.eventListener)).execute();
    }
}
