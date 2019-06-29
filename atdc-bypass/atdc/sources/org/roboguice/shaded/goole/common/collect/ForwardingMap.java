package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Objects;

@GwtCompatible
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {

    @Beta
    protected class StandardValues extends Values<K, V> {
        public StandardValues() {
            super(ForwardingMap.this);
        }
    }

    @Beta
    protected abstract class StandardEntrySet extends EntrySet<K, V> {
        /* Access modifiers changed, original: 0000 */
        public Map<K, V> map() {
            return ForwardingMap.this;
        }
    }

    @Beta
    protected class StandardKeySet extends KeySet<K, V> {
        public StandardKeySet() {
            super(ForwardingMap.this);
        }
    }

    public abstract Map<K, V> delegate();

    protected ForwardingMap() {
    }

    public int size() {
        return delegate().size();
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    public void clear() {
        delegate().clear();
    }

    public boolean containsKey(@Nullable Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@Nullable Object obj) {
        return delegate().containsValue(obj);
    }

    public V get(@Nullable Object obj) {
        return delegate().get(obj);
    }

    public V put(K k, V v) {
        return delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    public Collection<V> values() {
        return delegate().values();
    }

    public Set<Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    /* Access modifiers changed, original: protected */
    public void standardPutAll(Map<? extends K, ? extends V> map) {
        Maps.putAllImpl(this, map);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public V standardRemove(@Nullable Object obj) {
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (Objects.equal(entry.getKey(), obj)) {
                obj = entry.getValue();
                it.remove();
                return obj;
            }
        }
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void standardClear() {
        Iterators.clear(entrySet().iterator());
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public boolean standardContainsKey(@Nullable Object obj) {
        return Maps.containsKeyImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardContainsValue(@Nullable Object obj) {
        return Maps.containsValueImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardIsEmpty() {
        return entrySet().iterator().hasNext() ^ 1;
    }

    /* Access modifiers changed, original: protected */
    public boolean standardEquals(@Nullable Object obj) {
        return Maps.equalsImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public int standardHashCode() {
        return Sets.hashCodeImpl(entrySet());
    }

    /* Access modifiers changed, original: protected */
    public String standardToString() {
        return Maps.toStringImpl(this);
    }
}
