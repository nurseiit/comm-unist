package org.roboguice.shaded.goole.common.cache;

import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ForwardingObject;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;

@Beta
public abstract class ForwardingCache<K, V> extends ForwardingObject implements Cache<K, V> {

    @Beta
    public static abstract class SimpleForwardingCache<K, V> extends ForwardingCache<K, V> {
        private final Cache<K, V> delegate;

        protected SimpleForwardingCache(Cache<K, V> cache) {
            this.delegate = (Cache) Preconditions.checkNotNull(cache);
        }

        /* Access modifiers changed, original: protected|final */
        public final Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    public abstract Cache<K, V> delegate();

    protected ForwardingCache() {
    }

    @Nullable
    public V getIfPresent(Object obj) {
        return delegate().getIfPresent(obj);
    }

    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        return delegate().get(k, callable);
    }

    public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
        return delegate().getAllPresent(iterable);
    }

    public void put(K k, V v) {
        delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    public void invalidate(Object obj) {
        delegate().invalidate(obj);
    }

    public void invalidateAll(Iterable<?> iterable) {
        delegate().invalidateAll(iterable);
    }

    public void invalidateAll() {
        delegate().invalidateAll();
    }

    public long size() {
        return delegate().size();
    }

    public CacheStats stats() {
        return delegate().stats();
    }

    public ConcurrentMap<K, V> asMap() {
        return delegate().asMap();
    }

    public void cleanUp() {
        delegate().cleanUp();
    }
}
