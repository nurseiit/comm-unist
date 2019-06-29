package org.roboguice.shaded.goole.common.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true, serializable = true)
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    private static final double MAX_LOAD_FACTOR = 1.2d;
    private static final long serialVersionUID = 0;
    private final transient ImmutableMapEntry<K, V>[] entries;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] table;

    private static final class NonTerminalMapEntry<K, V> extends ImmutableMapEntry<K, V> {
        private final ImmutableMapEntry<K, V> nextInKeyBucket;

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ImmutableMapEntry<K, V> getNextInValueBucket() {
            return null;
        }

        NonTerminalMapEntry(K k, V v, ImmutableMapEntry<K, V> immutableMapEntry) {
            super(k, v);
            this.nextInKeyBucket = immutableMapEntry;
        }

        NonTerminalMapEntry(ImmutableMapEntry<K, V> immutableMapEntry, ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(immutableMapEntry);
            this.nextInKeyBucket = immutableMapEntry2;
        }

        /* Access modifiers changed, original: 0000 */
        public ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }
    }

    private class EntrySet extends ImmutableMapEntrySet<K, V> {
        private EntrySet() {
        }

        /* Access modifiers changed, original: 0000 */
        public ImmutableMap<K, V> map() {
            return RegularImmutableMap.this;
        }

        public UnmodifiableIterator<Entry<K, V>> iterator() {
            return asList().iterator();
        }

        /* Access modifiers changed, original: 0000 */
        public ImmutableList<Entry<K, V>> createAsList() {
            return new RegularImmutableAsList((ImmutableCollection) this, RegularImmutableMap.this.entries);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return false;
    }

    RegularImmutableMap(TerminalEntry<?, ?>... terminalEntryArr) {
        this(terminalEntryArr.length, terminalEntryArr);
    }

    RegularImmutableMap(int i, TerminalEntry<?, ?>[] terminalEntryArr) {
        this.entries = createEntryArray(i);
        int closedTableSize = Hashing.closedTableSize(i, MAX_LOAD_FACTOR);
        this.table = createEntryArray(closedTableSize);
        this.mask = closedTableSize - 1;
        for (closedTableSize = 0; closedTableSize < i; closedTableSize++) {
            ImmutableMapEntry immutableMapEntry = terminalEntryArr[closedTableSize];
            Object key = immutableMapEntry.getKey();
            int smear = Hashing.smear(key.hashCode()) & this.mask;
            ImmutableMapEntry immutableMapEntry2 = this.table[smear];
            if (immutableMapEntry2 != null) {
                immutableMapEntry = new NonTerminalMapEntry(immutableMapEntry, immutableMapEntry2);
            }
            this.table[smear] = immutableMapEntry;
            this.entries[closedTableSize] = immutableMapEntry;
            checkNoConflictInBucket(key, immutableMapEntry, immutableMapEntry2);
        }
    }

    RegularImmutableMap(Entry<?, ?>[] entryArr) {
        int length = entryArr.length;
        this.entries = createEntryArray(length);
        int closedTableSize = Hashing.closedTableSize(length, MAX_LOAD_FACTOR);
        this.table = createEntryArray(closedTableSize);
        this.mask = closedTableSize - 1;
        for (closedTableSize = 0; closedTableSize < length; closedTableSize++) {
            Entry entry = entryArr[closedTableSize];
            Object key = entry.getKey();
            Object value = entry.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int smear = Hashing.smear(key.hashCode()) & this.mask;
            ImmutableMapEntry immutableMapEntry = this.table[smear];
            ImmutableMapEntry terminalEntry = immutableMapEntry == null ? new TerminalEntry(key, value) : new NonTerminalMapEntry(key, value, immutableMapEntry);
            this.table[smear] = terminalEntry;
            this.entries[closedTableSize] = terminalEntry;
            checkNoConflictInBucket(key, terminalEntry, immutableMapEntry);
        }
    }

    private void checkNoConflictInBucket(K k, ImmutableMapEntry<K, V> immutableMapEntry, ImmutableMapEntry<K, V> immutableMapEntry2) {
        ImmutableMapEntry immutableMapEntry22;
        while (immutableMapEntry22 != null) {
            ImmutableMap.checkNoConflict(k.equals(immutableMapEntry22.getKey()) ^ 1, "key", immutableMapEntry, immutableMapEntry22);
            immutableMapEntry22 = immutableMapEntry22.getNextInKeyBucket();
        }
    }

    private ImmutableMapEntry<K, V>[] createEntryArray(int i) {
        return new ImmutableMapEntry[i];
    }

    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        for (ImmutableMapEntry immutableMapEntry = this.table[Hashing.smear(obj.hashCode()) & this.mask]; immutableMapEntry != null; immutableMapEntry = immutableMapEntry.getNextInKeyBucket()) {
            if (obj.equals(immutableMapEntry.getKey())) {
                return immutableMapEntry.getValue();
            }
        }
        return null;
    }

    public int size() {
        return this.entries.length;
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableSet<Entry<K, V>> createEntrySet() {
        return new EntrySet();
    }
}
