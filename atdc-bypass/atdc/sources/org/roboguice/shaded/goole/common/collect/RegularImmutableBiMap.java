package org.roboguice.shaded.goole.common.collect;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.Serializable;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true, serializable = true)
class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final double MAX_LOAD_FACTOR = 1.2d;
    private final transient ImmutableMapEntry<K, V>[] entries;
    private final transient int hashCode;
    private transient ImmutableBiMap<V, K> inverse;
    private final transient ImmutableMapEntry<K, V>[] keyTable;
    private final transient int mask;
    private final transient ImmutableMapEntry<K, V>[] valueTable;

    private final class Inverse extends ImmutableBiMap<V, K> {

        final class InverseEntrySet extends ImmutableMapEntrySet<V, K> {
            /* Access modifiers changed, original: 0000 */
            public boolean isHashCodeFast() {
                return true;
            }

            InverseEntrySet() {
            }

            /* Access modifiers changed, original: 0000 */
            public ImmutableMap<V, K> map() {
                return Inverse.this;
            }

            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }

            public UnmodifiableIterator<Entry<V, K>> iterator() {
                return asList().iterator();
            }

            /* Access modifiers changed, original: 0000 */
            public ImmutableList<Entry<V, K>> createAsList() {
                return new ImmutableAsList<Entry<V, K>>() {
                    public Entry<V, K> get(int i) {
                        Entry entry = RegularImmutableBiMap.this.entries[i];
                        return Maps.immutableEntry(entry.getValue(), entry.getKey());
                    }

                    /* Access modifiers changed, original: 0000 */
                    public ImmutableCollection<Entry<V, K>> delegateCollection() {
                        return InverseEntrySet.this;
                    }
                };
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isPartialView() {
            return false;
        }

        private Inverse() {
        }

        /* synthetic */ Inverse(RegularImmutableBiMap regularImmutableBiMap, AnonymousClass1 anonymousClass1) {
            this();
        }

        public int size() {
            return inverse().size();
        }

        public ImmutableBiMap<K, V> inverse() {
            return RegularImmutableBiMap.this;
        }

        public K get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            for (ImmutableMapEntry immutableMapEntry = RegularImmutableBiMap.this.valueTable[Hashing.smear(obj.hashCode()) & RegularImmutableBiMap.this.mask]; immutableMapEntry != null; immutableMapEntry = immutableMapEntry.getNextInValueBucket()) {
                if (obj.equals(immutableMapEntry.getValue())) {
                    return immutableMapEntry.getKey();
                }
            }
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        public ImmutableSet<Entry<V, K>> createEntrySet() {
            return new InverseEntrySet();
        }

        /* Access modifiers changed, original: 0000 */
        public Object writeReplace() {
            return new InverseSerializedForm(RegularImmutableBiMap.this);
        }
    }

    private static final class NonTerminalBiMapEntry<K, V> extends ImmutableMapEntry<K, V> {
        @Nullable
        private final ImmutableMapEntry<K, V> nextInKeyBucket;
        @Nullable
        private final ImmutableMapEntry<K, V> nextInValueBucket;

        NonTerminalBiMapEntry(K k, V v, @Nullable ImmutableMapEntry<K, V> immutableMapEntry, @Nullable ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(k, v);
            this.nextInKeyBucket = immutableMapEntry;
            this.nextInValueBucket = immutableMapEntry2;
        }

        NonTerminalBiMapEntry(ImmutableMapEntry<K, V> immutableMapEntry, @Nullable ImmutableMapEntry<K, V> immutableMapEntry2, @Nullable ImmutableMapEntry<K, V> immutableMapEntry3) {
            super(immutableMapEntry);
            this.nextInKeyBucket = immutableMapEntry2;
            this.nextInValueBucket = immutableMapEntry3;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ImmutableMapEntry<K, V> getNextInValueBucket() {
            return this.nextInValueBucket;
        }
    }

    private static class InverseSerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        private final ImmutableBiMap<K, V> forward;

        InverseSerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            this.forward = immutableBiMap;
        }

        /* Access modifiers changed, original: 0000 */
        public Object readResolve() {
            return this.forward.inverse();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return false;
    }

    RegularImmutableBiMap(TerminalEntry<?, ?>... terminalEntryArr) {
        this(terminalEntryArr.length, terminalEntryArr);
    }

    RegularImmutableBiMap(int i, TerminalEntry<?, ?>[] terminalEntryArr) {
        int i2 = i;
        int closedTableSize = Hashing.closedTableSize(i2, MAX_LOAD_FACTOR);
        this.mask = closedTableSize - 1;
        ImmutableMapEntry[] createEntryArray = createEntryArray(closedTableSize);
        ImmutableMapEntry[] createEntryArray2 = createEntryArray(closedTableSize);
        ImmutableMapEntry[] createEntryArray3 = createEntryArray(i);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            NonTerminalBiMapEntry nonTerminalBiMapEntry;
            ImmutableMapEntry immutableMapEntry = terminalEntryArr[i3];
            Object key = immutableMapEntry.getKey();
            Object value = immutableMapEntry.getValue();
            int hashCode = key.hashCode();
            int hashCode2 = value.hashCode();
            int smear = Hashing.smear(hashCode) & this.mask;
            int smear2 = Hashing.smear(hashCode2) & this.mask;
            ImmutableMapEntry immutableMapEntry2 = createEntryArray[smear];
            ImmutableMapEntry immutableMapEntry3 = immutableMapEntry2;
            while (immutableMapEntry3 != null) {
                Object obj = key;
                ImmutableMap.checkNoConflict(key.equals(immutableMapEntry3.getKey()) ^ 1, "key", immutableMapEntry, immutableMapEntry3);
                immutableMapEntry3 = immutableMapEntry3.getNextInKeyBucket();
                key = obj;
            }
            immutableMapEntry3 = createEntryArray2[smear2];
            ImmutableMapEntry immutableMapEntry4 = immutableMapEntry3;
            while (immutableMapEntry4 != null) {
                Object obj2 = value;
                ImmutableMap.checkNoConflict(value.equals(immutableMapEntry4.getValue()) ^ 1, Param.VALUE, immutableMapEntry, immutableMapEntry4);
                immutableMapEntry4 = immutableMapEntry4.getNextInValueBucket();
                value = obj2;
            }
            if (immutableMapEntry2 == null && immutableMapEntry3 == null) {
                nonTerminalBiMapEntry = immutableMapEntry;
            } else {
                nonTerminalBiMapEntry = new NonTerminalBiMapEntry(immutableMapEntry, immutableMapEntry2, immutableMapEntry3);
            }
            createEntryArray[smear] = nonTerminalBiMapEntry;
            createEntryArray2[smear2] = nonTerminalBiMapEntry;
            createEntryArray3[i3] = nonTerminalBiMapEntry;
            i4 += hashCode ^ hashCode2;
            i3++;
            i2 = i;
        }
        this.keyTable = createEntryArray;
        this.valueTable = createEntryArray2;
        this.entries = createEntryArray3;
        this.hashCode = i4;
    }

    RegularImmutableBiMap(Entry<?, ?>[] entryArr) {
        int i;
        RegularImmutableBiMap regularImmutableBiMap = this;
        Entry<?, ?>[] entryArr2 = entryArr;
        int length = entryArr2.length;
        int closedTableSize = Hashing.closedTableSize(length, MAX_LOAD_FACTOR);
        regularImmutableBiMap.mask = closedTableSize - 1;
        ImmutableMapEntry[] createEntryArray = createEntryArray(closedTableSize);
        ImmutableMapEntry[] createEntryArray2 = createEntryArray(closedTableSize);
        ImmutableMapEntry[] createEntryArray3 = createEntryArray(length);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4;
            Entry entry = entryArr2[i2];
            Object key = entry.getKey();
            Object value = entry.getValue();
            CollectPreconditions.checkEntryNotNull(key, value);
            int hashCode = key.hashCode();
            int hashCode2 = value.hashCode();
            int smear = Hashing.smear(hashCode) & regularImmutableBiMap.mask;
            int smear2 = Hashing.smear(hashCode2) & regularImmutableBiMap.mask;
            ImmutableMapEntry immutableMapEntry = createEntryArray[smear];
            ImmutableMapEntry immutableMapEntry2 = immutableMapEntry;
            while (immutableMapEntry2 != null) {
                i4 = length;
                ImmutableMap.checkNoConflict(key.equals(immutableMapEntry2.getKey()) ^ 1, "key", entry, immutableMapEntry2);
                immutableMapEntry2 = immutableMapEntry2.getNextInKeyBucket();
                length = i4;
            }
            i4 = length;
            ImmutableMapEntry immutableMapEntry3 = createEntryArray2[smear2];
            immutableMapEntry2 = immutableMapEntry3;
            while (immutableMapEntry2 != null) {
                i = i3;
                ImmutableMap.checkNoConflict(value.equals(immutableMapEntry2.getValue()) ^ 1, Param.VALUE, entry, immutableMapEntry2);
                immutableMapEntry2 = immutableMapEntry2.getNextInValueBucket();
                i3 = i;
            }
            i = i3;
            TerminalEntry terminalEntry = (immutableMapEntry == null && immutableMapEntry3 == null) ? new TerminalEntry(key, value) : new NonTerminalBiMapEntry(key, value, immutableMapEntry, immutableMapEntry3);
            createEntryArray[smear] = terminalEntry;
            createEntryArray2[smear2] = terminalEntry;
            createEntryArray3[i2] = terminalEntry;
            i3 = i + (hashCode ^ hashCode2);
            i2++;
            length = i4;
            regularImmutableBiMap = this;
            entryArr2 = entryArr;
        }
        i = i3;
        regularImmutableBiMap.keyTable = createEntryArray;
        regularImmutableBiMap.valueTable = createEntryArray2;
        regularImmutableBiMap.entries = createEntryArray3;
        regularImmutableBiMap.hashCode = i;
    }

    private static <K, V> ImmutableMapEntry<K, V>[] createEntryArray(int i) {
        return new ImmutableMapEntry[i];
    }

    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        for (ImmutableMapEntry immutableMapEntry = this.keyTable[Hashing.smear(obj.hashCode()) & this.mask]; immutableMapEntry != null; immutableMapEntry = immutableMapEntry.getNextInKeyBucket()) {
            if (obj.equals(immutableMapEntry.getKey())) {
                return immutableMapEntry.getValue();
            }
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableSet<Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet<K, V>() {
            /* Access modifiers changed, original: 0000 */
            public boolean isHashCodeFast() {
                return true;
            }

            /* Access modifiers changed, original: 0000 */
            public ImmutableMap<K, V> map() {
                return RegularImmutableBiMap.this;
            }

            public UnmodifiableIterator<Entry<K, V>> iterator() {
                return asList().iterator();
            }

            /* Access modifiers changed, original: 0000 */
            public ImmutableList<Entry<K, V>> createAsList() {
                return new RegularImmutableAsList((ImmutableCollection) this, RegularImmutableBiMap.this.entries);
            }

            public int hashCode() {
                return RegularImmutableBiMap.this.hashCode;
            }
        };
    }

    public int size() {
        return this.entries.length;
    }

    public ImmutableBiMap<V, K> inverse() {
        ImmutableBiMap<V, K> immutableBiMap = this.inverse;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        Inverse inverse = new Inverse(this, null);
        this.inverse = inverse;
        return inverse;
    }
}
