package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingMultimap<K, V> extends ForwardingObject implements Multimap<K, V> {
    public abstract Multimap<K, V> delegate();

    protected ForwardingMultimap() {
    }

    public Map<K, Collection<V>> asMap() {
        return delegate().asMap();
    }

    public void clear() {
        delegate().clear();
    }

    public boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return delegate().containsEntry(obj, obj2);
    }

    public boolean containsKey(@Nullable Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@Nullable Object obj) {
        return delegate().containsValue(obj);
    }

    public Collection<Entry<K, V>> entries() {
        return delegate().entries();
    }

    public Collection<V> get(@Nullable K k) {
        return delegate().get(k);
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Multiset<K> keys() {
        return delegate().keys();
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    public boolean put(K k, V v) {
        return delegate().put(k, v);
    }

    public boolean putAll(K k, Iterable<? extends V> iterable) {
        return delegate().putAll(k, iterable);
    }

    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        return delegate().putAll(multimap);
    }

    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        return delegate().remove(obj, obj2);
    }

    public Collection<V> removeAll(@Nullable Object obj) {
        return delegate().removeAll(obj);
    }

    public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return delegate().replaceValues(k, iterable);
    }

    public int size() {
        return delegate().size();
    }

    public Collection<V> values() {
        return delegate().values();
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }
}
