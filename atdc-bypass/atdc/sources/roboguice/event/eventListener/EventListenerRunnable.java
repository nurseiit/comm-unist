package roboguice.event.eventListener;

import roboguice.event.EventListener;

public class EventListenerRunnable<T> implements Runnable {
    protected T event;
    protected EventListener<T> eventListener;

    public EventListenerRunnable(T t, EventListener<T> eventListener) {
        this.event = t;
        this.eventListener = eventListener;
    }

    public void run() {
        this.eventListener.onEvent(this.event);
    }
}
