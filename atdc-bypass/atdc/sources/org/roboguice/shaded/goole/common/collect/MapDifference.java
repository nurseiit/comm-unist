package org.roboguice.shaded.goole.common.collect;

import java.util.Map;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public interface MapDifference<K, V> {

    public interface ValueDifference<V> {
        boolean equals(@Nullable Object obj);

        int hashCode();

        V leftValue();

        V rightValue();
    }

    boolean areEqual();

    Map<K, ValueDifference<V>> entriesDiffering();

    Map<K, V> entriesInCommon();

    Map<K, V> entriesOnlyOnLeft();

    Map<K, V> entriesOnlyOnRight();

    boolean equals(@Nullable Object obj);

    int hashCode();
}
