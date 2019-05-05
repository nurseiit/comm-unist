package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;

@GwtCompatible(emulated = true)
final class ImmutableMapKeySet<K, V> extends ImmutableSet<K> {
    private final ImmutableMap<K, V> map;

    @GwtIncompatible("serialization")
    private static class KeySetSerializedForm<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> map;

        KeySetSerializedForm(ImmutableMap<K, ?> immutableMap) {
            this.map = immutableMap;
        }

        /* Access modifiers changed, original: 0000 */
        public Object readResolve() {
            return this.map.keySet();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return true;
    }

    ImmutableMapKeySet(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    public int size() {
        return this.map.size();
    }

    public UnmodifiableIterator<K> iterator() {
        return asList().iterator();
    }

    public boolean contains(@Nullable Object obj) {
        return this.map.containsKey(obj);
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableList<K> createAsList() {
        final ImmutableList asList = this.map.entrySet().asList();
        return new ImmutableAsList<K>() {
            public K get(int i) {
                return ((Entry) asList.get(i)).getKey();
            }

            /* Access modifiers changed, original: 0000 */
            public ImmutableCollection<K> delegateCollection() {
                return ImmutableMapKeySet.this;
            }
        };
    }

    /* Access modifiers changed, original: 0000 */
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new KeySetSerializedForm(this.map);
    }
}
