package org.roboguice.shaded.goole.common.cache;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;

@Beta
@GwtCompatible
public interface Cache<K, V> {
    ConcurrentMap<K, V> asMap();

    void cleanUp();

    V get(K k, Callable<? extends V> callable) throws ExecutionException;

    ImmutableMap<K, V> getAllPresent(Iterable<?> iterable);

    @Nullable
    V getIfPresent(Object obj);

    void invalidate(Object obj);

    void invalidateAll();

    void invalidateAll(Iterable<?> iterable);

    void put(K k, V v);

    void putAll(Map<? extends K, ? extends V> map);

    long size();

    CacheStats stats();
}
