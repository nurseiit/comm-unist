package org.roboguice.shaded.goole.common.collect;

import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public interface BiMap<K, V> extends Map<K, V> {
    V forcePut(@Nullable K k, @Nullable V v);

    BiMap<V, K> inverse();

    V put(@Nullable K k, @Nullable V v);

    void putAll(Map<? extends K, ? extends V> map);

    Set<V> values();
}
