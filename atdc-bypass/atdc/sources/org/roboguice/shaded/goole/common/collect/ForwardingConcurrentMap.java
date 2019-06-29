package org.roboguice.shaded.goole.common.collect;

import java.util.concurrent.ConcurrentMap;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingConcurrentMap<K, V> extends ForwardingMap<K, V> implements ConcurrentMap<K, V> {
    public abstract ConcurrentMap<K, V> delegate();

    protected ForwardingConcurrentMap() {
    }

    public V putIfAbsent(K k, V v) {
        return delegate().putIfAbsent(k, v);
    }

    public boolean remove(Object obj, Object obj2) {
        return delegate().remove(obj, obj2);
    }

    public V replace(K k, V v) {
        return delegate().replace(k, v);
    }

    public boolean replace(K k, V v, V v2) {
        return delegate().replace(k, v, v2);
    }
}
