package org.roboguice.shaded.goole.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(emulated = true, serializable = true)
public final class HashMultimap<K, V> extends AbstractSetMultimap<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 2;
    @GwtIncompatible("Not needed in emulated source")
    private static final long serialVersionUID = 0;
    @VisibleForTesting
    transient int expectedValuesPerKey = 2;

    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get(obj);
    }

    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return super.replaceValues(obj, iterable);
    }

    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap();
    }

    public static <K, V> HashMultimap<K, V> create(int i, int i2) {
        return new HashMultimap(i, i2);
    }

    public static <K, V> HashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new HashMultimap(multimap);
    }

    private HashMultimap() {
        super(new HashMap());
    }

    private HashMultimap(int i, int i2) {
        super(Maps.newHashMapWithExpectedSize(i));
        Preconditions.checkArgument(i2 >= 0);
        this.expectedValuesPerKey = i2;
    }

    private HashMultimap(Multimap<? extends K, ? extends V> multimap) {
        super(Maps.newHashMapWithExpectedSize(multimap.keySet().size()));
        putAll(multimap);
    }

    /* Access modifiers changed, original: 0000 */
    public Set<V> createCollection() {
        return Sets.newHashSetWithExpectedSize(this.expectedValuesPerKey);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.expectedValuesPerKey);
        Serialization.writeMultimap(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = objectInputStream.readInt();
        int readCount = Serialization.readCount(objectInputStream);
        setMap(Maps.newHashMapWithExpectedSize(readCount));
        Serialization.populateMultimap(this, objectInputStream, readCount);
    }
}
