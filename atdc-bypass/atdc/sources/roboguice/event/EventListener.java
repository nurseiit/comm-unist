package roboguice.event;

public interface EventListener<T> {
    void onEvent(T t);
}
