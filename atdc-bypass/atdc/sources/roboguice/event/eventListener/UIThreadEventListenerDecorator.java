package roboguice.event.eventListener;

import android.os.Handler;
import roboguice.event.EventListener;

public class UIThreadEventListenerDecorator<T> implements EventListener<T> {
    protected EventListener<T> eventListener;
    protected Handler handler;

    public UIThreadEventListenerDecorator(EventListener<T> eventListener, Handler handler) {
        this.eventListener = eventListener;
        this.handler = handler;
    }

    public void onEvent(T t) {
        this.handler.post(new EventListenerRunnable(t, this.eventListener));
    }
}
