package org.roboguice.shaded.goole.common.cache;

import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public interface RemovalListener<K, V> {
    void onRemoval(RemovalNotification<K, V> removalNotification);
}
