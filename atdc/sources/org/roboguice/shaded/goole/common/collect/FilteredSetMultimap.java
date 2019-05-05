package org.roboguice.shaded.goole.common.collect;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
interface FilteredSetMultimap<K, V> extends FilteredMultimap<K, V>, SetMultimap<K, V> {
    SetMultimap<K, V> unfiltered();
}
