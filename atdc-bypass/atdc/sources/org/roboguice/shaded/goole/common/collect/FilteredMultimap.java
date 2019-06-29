package org.roboguice.shaded.goole.common.collect;

import java.util.Map.Entry;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Predicate;

@GwtCompatible
interface FilteredMultimap<K, V> extends Multimap<K, V> {
    Predicate<? super Entry<K, V>> entryPredicate();

    Multimap<K, V> unfiltered();
}
