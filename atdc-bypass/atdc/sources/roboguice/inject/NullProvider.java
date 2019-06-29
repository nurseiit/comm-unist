package roboguice.inject;

import com.google.inject.Provider;

public class NullProvider<T> implements Provider<T> {
    static NullProvider<?> instance = new NullProvider();

    public T get() {
        return null;
    }

    public static <T> NullProvider<T> instance() {
        return instance;
    }
}
