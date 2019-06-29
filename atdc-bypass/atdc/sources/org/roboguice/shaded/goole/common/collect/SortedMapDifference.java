package org.roboguice.shaded.goole.common.collect;

import java.util.SortedMap;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.collect.MapDifference.ValueDifference;

@GwtCompatible
public interface SortedMapDifference<K, V> extends MapDifference<K, V> {
    SortedMap<K, ValueDifference<V>> entriesDiffering();

    SortedMap<K, V> entriesInCommon();

    SortedMap<K, V> entriesOnlyOnLeft();

    SortedMap<K, V> entriesOnlyOnRight();
}
