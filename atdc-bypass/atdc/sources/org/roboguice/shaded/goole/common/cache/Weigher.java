package org.roboguice.shaded.goole.common.cache;

import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
