package roboguice.event.eventListener.factory;

import android.os.Handler;
import com.google.inject.Inject;
import com.google.inject.Provider;
import roboguice.event.EventListener;
import roboguice.event.EventThread;
import roboguice.event.eventListener.AsynchronousEventListenerDecorator;
import roboguice.event.eventListener.UIThreadEventListenerDecorator;

public class EventListenerThreadingDecorator {
    @Inject
    protected Provider<Handler> handlerProvider;

    public <T> EventListener<T> decorate(EventThread eventThread, EventListener<T> eventListener) {
        switch (eventThread) {
            case UI:
                return new UIThreadEventListenerDecorator(eventListener, (Handler) this.handlerProvider.get());
            case BACKGROUND:
                return new AsynchronousEventListenerDecorator(eventListener);
            default:
                return eventListener;
        }
    }
}
