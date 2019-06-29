package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public interface SetMultimap<K, V> extends Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    Set<Entry<K, V>> entries();

    boolean equals(@Nullable Object obj);

    Set<V> get(@Nullable K k);

    Set<V> removeAll(@Nullable Object obj);

    Set<V> replaceValues(K k, Iterable<? extends V> iterable);
}
