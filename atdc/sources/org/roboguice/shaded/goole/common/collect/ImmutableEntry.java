package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(serializable = true)
class ImmutableEntry<K, V> extends AbstractMapEntry<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final K key;
    final V value;

    ImmutableEntry(@Nullable K k, @Nullable V v) {
        this.key = k;
        this.value = v;
    }

    @Nullable
    public final K getKey() {
        return this.key;
    }

    @Nullable
    public final V getValue() {
        return this.value;
    }

    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
