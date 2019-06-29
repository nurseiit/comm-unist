package org.roboguice.shaded.goole.common.collect;

import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;

@GwtIncompatible("unnecessary")
abstract class ImmutableMapEntry<K, V> extends ImmutableEntry<K, V> {

    static final class TerminalEntry<K, V> extends ImmutableMapEntry<K, V> {
        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ImmutableMapEntry<K, V> getNextInValueBucket() {
            return null;
        }

        TerminalEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
            super(immutableMapEntry);
        }

        TerminalEntry(K k, V v) {
            super(k, v);
        }
    }

    @Nullable
    public abstract ImmutableMapEntry<K, V> getNextInKeyBucket();

    @Nullable
    public abstract ImmutableMapEntry<K, V> getNextInValueBucket();

    ImmutableMapEntry(K k, V v) {
        super(k, v);
        CollectPreconditions.checkEntryNotNull(k, v);
    }

    ImmutableMapEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
        super(immutableMapEntry.getKey(), immutableMapEntry.getValue());
    }
}
