package roboguice.inject;

public interface ResourceFactory<T> {
    T get(int i);
}
