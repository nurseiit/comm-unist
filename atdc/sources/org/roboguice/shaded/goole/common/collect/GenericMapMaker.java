package org.roboguice.shaded.goole.common.collect;

import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.base.Equivalence;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Objects;

@Beta
@GwtCompatible(emulated = true)
@Deprecated
abstract class GenericMapMaker<K0, V0> {
    @GwtIncompatible("To be supported")
    RemovalListener<K0, V0> removalListener;

    @GwtIncompatible("To be supported")
    enum NullListener implements RemovalListener<Object, Object> {
        INSTANCE;

        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    public abstract GenericMapMaker<K0, V0> concurrencyLevel(int i);

    @GwtIncompatible("To be supported")
    public abstract GenericMapMaker<K0, V0> expireAfterAccess(long j, TimeUnit timeUnit);

    public abstract GenericMapMaker<K0, V0> expireAfterWrite(long j, TimeUnit timeUnit);

    public abstract GenericMapMaker<K0, V0> initialCapacity(int i);

    @GwtIncompatible("To be supported")
    public abstract GenericMapMaker<K0, V0> keyEquivalence(Equivalence<Object> equivalence);

    @Deprecated
    public abstract <K extends K0, V extends V0> ConcurrentMap<K, V> makeComputingMap(Function<? super K, ? extends V> function);

    @GwtIncompatible("MapMakerInternalMap")
    public abstract <K, V> MapMakerInternalMap<K, V> makeCustomMap();

    public abstract <K extends K0, V extends V0> ConcurrentMap<K, V> makeMap();

    public abstract GenericMapMaker<K0, V0> maximumSize(int i);

    @Deprecated
    @GwtIncompatible("java.lang.ref.SoftReference")
    public abstract GenericMapMaker<K0, V0> softValues();

    @GwtIncompatible("java.lang.ref.WeakReference")
    public abstract GenericMapMaker<K0, V0> weakKeys();

    @GwtIncompatible("java.lang.ref.WeakReference")
    public abstract GenericMapMaker<K0, V0> weakValues();

    GenericMapMaker() {
    }

    /* Access modifiers changed, original: 0000 */
    @GwtIncompatible("To be supported")
    public <K extends K0, V extends V0> RemovalListener<K, V> getRemovalListener() {
        return (RemovalListener) Objects.firstNonNull(this.removalListener, NullListener.INSTANCE);
    }
}
