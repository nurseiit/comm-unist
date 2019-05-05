package org.roboguice.shaded.goole.common.collect;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(emulated = true)
final class Synchronized {

    static class SynchronizedObject implements Serializable {
        @GwtIncompatible("not needed in emulated source")
        private static final long serialVersionUID = 0;
        final Object delegate;
        final Object mutex;

        SynchronizedObject(Object obj, @Nullable Object obj2) {
            this.delegate = Preconditions.checkNotNull(obj);
            if (obj2 == null) {
                obj2 = this;
            }
            this.mutex = obj2;
        }

        /* Access modifiers changed, original: 0000 */
        public Object delegate() {
            return this.delegate;
        }

        public String toString() {
            String obj;
            synchronized (this.mutex) {
                obj = this.delegate.toString();
            }
            return obj;
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.mutex) {
                objectOutputStream.defaultWriteObject();
            }
        }
    }

    @VisibleForTesting
    static class SynchronizedCollection<E> extends SynchronizedObject implements Collection<E> {
        private static final long serialVersionUID = 0;

        /* synthetic */ SynchronizedCollection(Collection collection, Object obj, AnonymousClass1 anonymousClass1) {
            this(collection, obj);
        }

        private SynchronizedCollection(Collection<E> collection, @Nullable Object obj) {
            super(collection, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public Collection<E> delegate() {
            return (Collection) super.delegate();
        }

        public boolean add(E e) {
            boolean add;
            synchronized (this.mutex) {
                add = delegate().add(e);
            }
            return add;
        }

        public boolean addAll(Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.mutex) {
                addAll = delegate().addAll(collection);
            }
            return addAll;
        }

        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean contains;
            synchronized (this.mutex) {
                contains = delegate().contains(obj);
            }
            return contains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean containsAll;
            synchronized (this.mutex) {
                containsAll = delegate().containsAll(collection);
            }
            return containsAll;
        }

        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        public Iterator<E> iterator() {
            return delegate().iterator();
        }

        public boolean remove(Object obj) {
            boolean remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj);
            }
            return remove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retainAll;
            synchronized (this.mutex) {
                retainAll = delegate().retainAll(collection);
            }
            return retainAll;
        }

        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] toArray;
            synchronized (this.mutex) {
                toArray = delegate().toArray();
            }
            return toArray;
        }

        public <T> T[] toArray(T[] tArr) {
            Object[] toArray;
            synchronized (this.mutex) {
                toArray = delegate().toArray(tArr);
            }
            return toArray;
        }
    }

    @GwtIncompatible("works but is needed only for NavigableMap")
    private static class SynchronizedEntry<K, V> extends SynchronizedObject implements Entry<K, V> {
        private static final long serialVersionUID = 0;

        SynchronizedEntry(Entry<K, V> entry, @Nullable Object obj) {
            super(entry, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public Entry<K, V> delegate() {
            return (Entry) super.delegate();
        }

        public boolean equals(Object obj) {
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }

        public K getKey() {
            Object key;
            synchronized (this.mutex) {
                key = delegate().getKey();
            }
            return key;
        }

        public V getValue() {
            Object value;
            synchronized (this.mutex) {
                value = delegate().getValue();
            }
            return value;
        }

        public V setValue(V v) {
            Object value;
            synchronized (this.mutex) {
                value = delegate().setValue(v);
            }
            return value;
        }
    }

    private static class SynchronizedMap<K, V> extends SynchronizedObject implements Map<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<Entry<K, V>> entrySet;
        transient Set<K> keySet;
        transient Collection<V> values;

        SynchronizedMap(Map<K, V> map, @Nullable Object obj) {
            super(map, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public Map<K, V> delegate() {
            return (Map) super.delegate();
        }

        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.mutex) {
                containsKey = delegate().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.mutex) {
                containsValue = delegate().containsValue(obj);
            }
            return containsValue;
        }

        public Set<Entry<K, V>> entrySet() {
            Set set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.set(delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        public V get(Object obj) {
            synchronized (this.mutex) {
                obj = delegate().get(obj);
            }
            return obj;
        }

        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        public Set<K> keySet() {
            Set set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = Synchronized.set(delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        public V put(K k, V v) {
            Object put;
            synchronized (this.mutex) {
                put = delegate().put(k, v);
            }
            return put;
        }

        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.mutex) {
                delegate().putAll(map);
            }
        }

        public V remove(Object obj) {
            synchronized (this.mutex) {
                obj = delegate().remove(obj);
            }
            return obj;
        }

        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection collection;
            synchronized (this.mutex) {
                if (this.values == null) {
                    this.values = Synchronized.collection(delegate().values(), this.mutex);
                }
                collection = this.values;
            }
            return collection;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    private static class SynchronizedMultimap<K, V> extends SynchronizedObject implements Multimap<K, V> {
        private static final long serialVersionUID = 0;
        transient Map<K, Collection<V>> asMap;
        transient Collection<Entry<K, V>> entries;
        transient Set<K> keySet;
        transient Multiset<K> keys;
        transient Collection<V> valuesCollection;

        /* Access modifiers changed, original: 0000 */
        public Multimap<K, V> delegate() {
            return (Multimap) super.delegate();
        }

        SynchronizedMultimap(Multimap<K, V> multimap, @Nullable Object obj) {
            super(multimap, obj);
        }

        public int size() {
            int size;
            synchronized (this.mutex) {
                size = delegate().size();
            }
            return size;
        }

        public boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.mutex) {
                isEmpty = delegate().isEmpty();
            }
            return isEmpty;
        }

        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.mutex) {
                containsKey = delegate().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.mutex) {
                containsValue = delegate().containsValue(obj);
            }
            return containsValue;
        }

        public boolean containsEntry(Object obj, Object obj2) {
            boolean containsEntry;
            synchronized (this.mutex) {
                containsEntry = delegate().containsEntry(obj, obj2);
            }
            return containsEntry;
        }

        public Collection<V> get(K k) {
            Collection access$400;
            synchronized (this.mutex) {
                access$400 = Synchronized.typePreservingCollection(delegate().get(k), this.mutex);
            }
            return access$400;
        }

        public boolean put(K k, V v) {
            boolean put;
            synchronized (this.mutex) {
                put = delegate().put(k, v);
            }
            return put;
        }

        public boolean putAll(K k, Iterable<? extends V> iterable) {
            boolean putAll;
            synchronized (this.mutex) {
                putAll = delegate().putAll(k, iterable);
            }
            return putAll;
        }

        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            boolean putAll;
            synchronized (this.mutex) {
                putAll = delegate().putAll(multimap);
            }
            return putAll;
        }

        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Collection replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues(k, iterable);
            }
            return replaceValues;
        }

        public boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj, obj2);
            }
            return remove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        public void clear() {
            synchronized (this.mutex) {
                delegate().clear();
            }
        }

        public Set<K> keySet() {
            Set set;
            synchronized (this.mutex) {
                if (this.keySet == null) {
                    this.keySet = Synchronized.typePreservingSet(delegate().keySet(), this.mutex);
                }
                set = this.keySet;
            }
            return set;
        }

        public Collection<V> values() {
            Collection collection;
            synchronized (this.mutex) {
                if (this.valuesCollection == null) {
                    this.valuesCollection = Synchronized.collection(delegate().values(), this.mutex);
                }
                collection = this.valuesCollection;
            }
            return collection;
        }

        public Collection<Entry<K, V>> entries() {
            Collection collection;
            synchronized (this.mutex) {
                if (this.entries == null) {
                    this.entries = Synchronized.typePreservingCollection(delegate().entries(), this.mutex);
                }
                collection = this.entries;
            }
            return collection;
        }

        public Map<K, Collection<V>> asMap() {
            Map map;
            synchronized (this.mutex) {
                if (this.asMap == null) {
                    this.asMap = new SynchronizedAsMap(delegate().asMap(), this.mutex);
                }
                map = this.asMap;
            }
            return map;
        }

        public Multiset<K> keys() {
            Multiset multiset;
            synchronized (this.mutex) {
                if (this.keys == null) {
                    this.keys = Synchronized.multiset(delegate().keys(), this.mutex);
                }
                multiset = this.keys;
            }
            return multiset;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    private static class SynchronizedAsMap<K, V> extends SynchronizedMap<K, Collection<V>> {
        private static final long serialVersionUID = 0;
        transient Set<Entry<K, Collection<V>>> asMapEntrySet;
        transient Collection<Collection<V>> asMapValues;

        SynchronizedAsMap(Map<K, Collection<V>> map, @Nullable Object obj) {
            super(map, obj);
        }

        public Collection<V> get(Object obj) {
            Collection<V> collection;
            synchronized (this.mutex) {
                Collection collection2 = (Collection) super.get(obj);
                if (collection2 == null) {
                    collection = null;
                } else {
                    collection = Synchronized.typePreservingCollection(collection2, this.mutex);
                }
            }
            return collection;
        }

        public Set<Entry<K, Collection<V>>> entrySet() {
            Set set;
            synchronized (this.mutex) {
                if (this.asMapEntrySet == null) {
                    this.asMapEntrySet = new SynchronizedAsMapEntries(delegate().entrySet(), this.mutex);
                }
                set = this.asMapEntrySet;
            }
            return set;
        }

        public Collection<Collection<V>> values() {
            Collection collection;
            synchronized (this.mutex) {
                if (this.asMapValues == null) {
                    this.asMapValues = new SynchronizedAsMapValues(delegate().values(), this.mutex);
                }
                collection = this.asMapValues;
            }
            return collection;
        }

        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }
    }

    private static class SynchronizedAsMapValues<V> extends SynchronizedCollection<Collection<V>> {
        private static final long serialVersionUID = 0;

        SynchronizedAsMapValues(Collection<Collection<V>> collection, @Nullable Object obj) {
            super(collection, obj, null);
        }

        public Iterator<Collection<V>> iterator() {
            final Iterator it = super.iterator();
            return new ForwardingIterator<Collection<V>>() {
                /* Access modifiers changed, original: protected */
                public Iterator<Collection<V>> delegate() {
                    return it;
                }

                public Collection<V> next() {
                    return Synchronized.typePreservingCollection((Collection) super.next(), SynchronizedAsMapValues.this.mutex);
                }
            };
        }
    }

    @VisibleForTesting
    static class SynchronizedBiMap<K, V> extends SynchronizedMap<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        private transient BiMap<V, K> inverse;
        private transient Set<V> valueSet;

        /* synthetic */ SynchronizedBiMap(BiMap biMap, Object obj, BiMap biMap2, AnonymousClass1 anonymousClass1) {
            this(biMap, obj, biMap2);
        }

        private SynchronizedBiMap(BiMap<K, V> biMap, @Nullable Object obj, @Nullable BiMap<V, K> biMap2) {
            super(biMap, obj);
            this.inverse = biMap2;
        }

        /* Access modifiers changed, original: 0000 */
        public BiMap<K, V> delegate() {
            return (BiMap) super.delegate();
        }

        public Set<V> values() {
            Set set;
            synchronized (this.mutex) {
                if (this.valueSet == null) {
                    this.valueSet = Synchronized.set(delegate().values(), this.mutex);
                }
                set = this.valueSet;
            }
            return set;
        }

        public V forcePut(K k, V v) {
            Object forcePut;
            synchronized (this.mutex) {
                forcePut = delegate().forcePut(k, v);
            }
            return forcePut;
        }

        public BiMap<V, K> inverse() {
            BiMap biMap;
            synchronized (this.mutex) {
                if (this.inverse == null) {
                    this.inverse = new SynchronizedBiMap(delegate().inverse(), this.mutex, this);
                }
                biMap = this.inverse;
            }
            return biMap;
        }
    }

    private static class SynchronizedList<E> extends SynchronizedCollection<E> implements List<E> {
        private static final long serialVersionUID = 0;

        SynchronizedList(List<E> list, @Nullable Object obj) {
            super(list, obj, null);
        }

        /* Access modifiers changed, original: 0000 */
        public List<E> delegate() {
            return (List) super.delegate();
        }

        public void add(int i, E e) {
            synchronized (this.mutex) {
                delegate().add(i, e);
            }
        }

        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean addAll;
            synchronized (this.mutex) {
                addAll = delegate().addAll(i, collection);
            }
            return addAll;
        }

        public E get(int i) {
            Object obj;
            synchronized (this.mutex) {
                obj = delegate().get(i);
            }
            return obj;
        }

        public int indexOf(Object obj) {
            int indexOf;
            synchronized (this.mutex) {
                indexOf = delegate().indexOf(obj);
            }
            return indexOf;
        }

        public int lastIndexOf(Object obj) {
            int lastIndexOf;
            synchronized (this.mutex) {
                lastIndexOf = delegate().lastIndexOf(obj);
            }
            return lastIndexOf;
        }

        public ListIterator<E> listIterator() {
            return delegate().listIterator();
        }

        public ListIterator<E> listIterator(int i) {
            return delegate().listIterator(i);
        }

        public E remove(int i) {
            Object remove;
            synchronized (this.mutex) {
                remove = delegate().remove(i);
            }
            return remove;
        }

        public E set(int i, E e) {
            Object obj;
            synchronized (this.mutex) {
                obj = delegate().set(i, e);
            }
            return obj;
        }

        public List<E> subList(int i, int i2) {
            List access$200;
            synchronized (this.mutex) {
                access$200 = Synchronized.list(delegate().subList(i, i2), this.mutex);
            }
            return access$200;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    private static class SynchronizedListMultimap<K, V> extends SynchronizedMultimap<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        SynchronizedListMultimap(ListMultimap<K, V> listMultimap, @Nullable Object obj) {
            super(listMultimap, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }

        public List<V> get(K k) {
            List access$200;
            synchronized (this.mutex) {
                access$200 = Synchronized.list(delegate().get(k), this.mutex);
            }
            return access$200;
        }

        public List<V> removeAll(Object obj) {
            List removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            List replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues(k, iterable);
            }
            return replaceValues;
        }
    }

    private static class SynchronizedMultiset<E> extends SynchronizedCollection<E> implements Multiset<E> {
        private static final long serialVersionUID = 0;
        transient Set<E> elementSet;
        transient Set<Multiset.Entry<E>> entrySet;

        SynchronizedMultiset(Multiset<E> multiset, @Nullable Object obj) {
            super(multiset, obj, null);
        }

        /* Access modifiers changed, original: 0000 */
        public Multiset<E> delegate() {
            return (Multiset) super.delegate();
        }

        public int count(Object obj) {
            int count;
            synchronized (this.mutex) {
                count = delegate().count(obj);
            }
            return count;
        }

        public int add(E e, int i) {
            int add;
            synchronized (this.mutex) {
                add = delegate().add(e, i);
            }
            return add;
        }

        public int remove(Object obj, int i) {
            int remove;
            synchronized (this.mutex) {
                remove = delegate().remove(obj, i);
            }
            return remove;
        }

        public int setCount(E e, int i) {
            int count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i);
            }
            return count;
        }

        public boolean setCount(E e, int i, int i2) {
            boolean count;
            synchronized (this.mutex) {
                count = delegate().setCount(e, i, i2);
            }
            return count;
        }

        public Set<E> elementSet() {
            Set set;
            synchronized (this.mutex) {
                if (this.elementSet == null) {
                    this.elementSet = Synchronized.typePreservingSet(delegate().elementSet(), this.mutex);
                }
                set = this.elementSet;
            }
            return set;
        }

        public Set<Multiset.Entry<E>> entrySet() {
            Set set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.typePreservingSet(delegate().entrySet(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    private static class SynchronizedQueue<E> extends SynchronizedCollection<E> implements Queue<E> {
        private static final long serialVersionUID = 0;

        SynchronizedQueue(Queue<E> queue, @Nullable Object obj) {
            super(queue, obj, null);
        }

        /* Access modifiers changed, original: 0000 */
        public Queue<E> delegate() {
            return (Queue) super.delegate();
        }

        public E element() {
            Object element;
            synchronized (this.mutex) {
                element = delegate().element();
            }
            return element;
        }

        public boolean offer(E e) {
            boolean offer;
            synchronized (this.mutex) {
                offer = delegate().offer(e);
            }
            return offer;
        }

        public E peek() {
            Object peek;
            synchronized (this.mutex) {
                peek = delegate().peek();
            }
            return peek;
        }

        public E poll() {
            Object poll;
            synchronized (this.mutex) {
                poll = delegate().poll();
            }
            return poll;
        }

        public E remove() {
            Object remove;
            synchronized (this.mutex) {
                remove = delegate().remove();
            }
            return remove;
        }
    }

    static class SynchronizedSet<E> extends SynchronizedCollection<E> implements Set<E> {
        private static final long serialVersionUID = 0;

        SynchronizedSet(Set<E> set, @Nullable Object obj) {
            super(set, obj, null);
        }

        /* Access modifiers changed, original: 0000 */
        public Set<E> delegate() {
            return (Set) super.delegate();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equals;
            synchronized (this.mutex) {
                equals = delegate().equals(obj);
            }
            return equals;
        }

        public int hashCode() {
            int hashCode;
            synchronized (this.mutex) {
                hashCode = delegate().hashCode();
            }
            return hashCode;
        }
    }

    private static class SynchronizedSetMultimap<K, V> extends SynchronizedMultimap<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<Entry<K, V>> entrySet;

        SynchronizedSetMultimap(SetMultimap<K, V> setMultimap, @Nullable Object obj) {
            super(setMultimap, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }

        public Set<V> get(K k) {
            Set set;
            synchronized (this.mutex) {
                set = Synchronized.set(delegate().get(k), this.mutex);
            }
            return set;
        }

        public Set<V> removeAll(Object obj) {
            Set removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Set replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues(k, iterable);
            }
            return replaceValues;
        }

        public Set<Entry<K, V>> entries() {
            Set set;
            synchronized (this.mutex) {
                if (this.entrySet == null) {
                    this.entrySet = Synchronized.set(delegate().entries(), this.mutex);
                }
                set = this.entrySet;
            }
            return set;
        }
    }

    static class SynchronizedSortedMap<K, V> extends SynchronizedMap<K, V> implements SortedMap<K, V> {
        private static final long serialVersionUID = 0;

        SynchronizedSortedMap(SortedMap<K, V> sortedMap, @Nullable Object obj) {
            super(sortedMap, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public SortedMap<K, V> delegate() {
            return (SortedMap) super.delegate();
        }

        public Comparator<? super K> comparator() {
            Comparator comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        public K firstKey() {
            Object firstKey;
            synchronized (this.mutex) {
                firstKey = delegate().firstKey();
            }
            return firstKey;
        }

        public SortedMap<K, V> headMap(K k) {
            SortedMap sortedMap;
            synchronized (this.mutex) {
                sortedMap = Synchronized.sortedMap(delegate().headMap(k), this.mutex);
            }
            return sortedMap;
        }

        public K lastKey() {
            Object lastKey;
            synchronized (this.mutex) {
                lastKey = delegate().lastKey();
            }
            return lastKey;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            SortedMap sortedMap;
            synchronized (this.mutex) {
                sortedMap = Synchronized.sortedMap(delegate().subMap(k, k2), this.mutex);
            }
            return sortedMap;
        }

        public SortedMap<K, V> tailMap(K k) {
            SortedMap sortedMap;
            synchronized (this.mutex) {
                sortedMap = Synchronized.sortedMap(delegate().tailMap(k), this.mutex);
            }
            return sortedMap;
        }
    }

    private static class SynchronizedAsMapEntries<K, V> extends SynchronizedSet<Entry<K, Collection<V>>> {
        private static final long serialVersionUID = 0;

        SynchronizedAsMapEntries(Set<Entry<K, Collection<V>>> set, @Nullable Object obj) {
            super(set, obj);
        }

        public Iterator<Entry<K, Collection<V>>> iterator() {
            final Iterator it = super.iterator();
            return new ForwardingIterator<Entry<K, Collection<V>>>() {
                /* Access modifiers changed, original: protected */
                public Iterator<Entry<K, Collection<V>>> delegate() {
                    return it;
                }

                public Entry<K, Collection<V>> next() {
                    final Entry entry = (Entry) super.next();
                    return new ForwardingMapEntry<K, Collection<V>>() {
                        /* Access modifiers changed, original: protected */
                        public Entry<K, Collection<V>> delegate() {
                            return entry;
                        }

                        public Collection<V> getValue() {
                            return Synchronized.typePreservingCollection((Collection) entry.getValue(), SynchronizedAsMapEntries.this.mutex);
                        }
                    };
                }
            };
        }

        public Object[] toArray() {
            Object[] toArrayImpl;
            synchronized (this.mutex) {
                toArrayImpl = ObjectArrays.toArrayImpl(delegate());
            }
            return toArrayImpl;
        }

        public <T> T[] toArray(T[] tArr) {
            Object[] toArrayImpl;
            synchronized (this.mutex) {
                toArrayImpl = ObjectArrays.toArrayImpl(delegate(), tArr);
            }
            return toArrayImpl;
        }

        public boolean contains(Object obj) {
            boolean containsEntryImpl;
            synchronized (this.mutex) {
                containsEntryImpl = Maps.containsEntryImpl(delegate(), obj);
            }
            return containsEntryImpl;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean containsAllImpl;
            synchronized (this.mutex) {
                containsAllImpl = Collections2.containsAllImpl(delegate(), collection);
            }
            return containsAllImpl;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            boolean equalsImpl;
            synchronized (this.mutex) {
                equalsImpl = Sets.equalsImpl(delegate(), obj);
            }
            return equalsImpl;
        }

        public boolean remove(Object obj) {
            boolean removeEntryImpl;
            synchronized (this.mutex) {
                removeEntryImpl = Maps.removeEntryImpl(delegate(), obj);
            }
            return removeEntryImpl;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removeAll;
            synchronized (this.mutex) {
                removeAll = Iterators.removeAll(delegate().iterator(), collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retainAll;
            synchronized (this.mutex) {
                retainAll = Iterators.retainAll(delegate().iterator(), collection);
            }
            return retainAll;
        }
    }

    @GwtIncompatible("Deque")
    private static final class SynchronizedDeque<E> extends SynchronizedQueue<E> implements Deque<E> {
        private static final long serialVersionUID = 0;

        SynchronizedDeque(Deque<E> deque, @Nullable Object obj) {
            super(deque, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public Deque<E> delegate() {
            return (Deque) super.delegate();
        }

        public void addFirst(E e) {
            synchronized (this.mutex) {
                delegate().addFirst(e);
            }
        }

        public void addLast(E e) {
            synchronized (this.mutex) {
                delegate().addLast(e);
            }
        }

        public boolean offerFirst(E e) {
            boolean offerFirst;
            synchronized (this.mutex) {
                offerFirst = delegate().offerFirst(e);
            }
            return offerFirst;
        }

        public boolean offerLast(E e) {
            boolean offerLast;
            synchronized (this.mutex) {
                offerLast = delegate().offerLast(e);
            }
            return offerLast;
        }

        public E removeFirst() {
            Object removeFirst;
            synchronized (this.mutex) {
                removeFirst = delegate().removeFirst();
            }
            return removeFirst;
        }

        public E removeLast() {
            Object removeLast;
            synchronized (this.mutex) {
                removeLast = delegate().removeLast();
            }
            return removeLast;
        }

        public E pollFirst() {
            Object pollFirst;
            synchronized (this.mutex) {
                pollFirst = delegate().pollFirst();
            }
            return pollFirst;
        }

        public E pollLast() {
            Object pollLast;
            synchronized (this.mutex) {
                pollLast = delegate().pollLast();
            }
            return pollLast;
        }

        public E getFirst() {
            Object first;
            synchronized (this.mutex) {
                first = delegate().getFirst();
            }
            return first;
        }

        public E getLast() {
            Object last;
            synchronized (this.mutex) {
                last = delegate().getLast();
            }
            return last;
        }

        public E peekFirst() {
            Object peekFirst;
            synchronized (this.mutex) {
                peekFirst = delegate().peekFirst();
            }
            return peekFirst;
        }

        public E peekLast() {
            Object peekLast;
            synchronized (this.mutex) {
                peekLast = delegate().peekLast();
            }
            return peekLast;
        }

        public boolean removeFirstOccurrence(Object obj) {
            boolean removeFirstOccurrence;
            synchronized (this.mutex) {
                removeFirstOccurrence = delegate().removeFirstOccurrence(obj);
            }
            return removeFirstOccurrence;
        }

        public boolean removeLastOccurrence(Object obj) {
            boolean removeLastOccurrence;
            synchronized (this.mutex) {
                removeLastOccurrence = delegate().removeLastOccurrence(obj);
            }
            return removeLastOccurrence;
        }

        public void push(E e) {
            synchronized (this.mutex) {
                delegate().push(e);
            }
        }

        public E pop() {
            Object pop;
            synchronized (this.mutex) {
                pop = delegate().pop();
            }
            return pop;
        }

        public Iterator<E> descendingIterator() {
            Iterator descendingIterator;
            synchronized (this.mutex) {
                descendingIterator = delegate().descendingIterator();
            }
            return descendingIterator;
        }
    }

    @GwtIncompatible("NavigableMap")
    @VisibleForTesting
    static class SynchronizedNavigableMap<K, V> extends SynchronizedSortedMap<K, V> implements NavigableMap<K, V> {
        private static final long serialVersionUID = 0;
        transient NavigableSet<K> descendingKeySet;
        transient NavigableMap<K, V> descendingMap;
        transient NavigableSet<K> navigableKeySet;

        SynchronizedNavigableMap(NavigableMap<K, V> navigableMap, @Nullable Object obj) {
            super(navigableMap, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public NavigableMap<K, V> delegate() {
            return (NavigableMap) super.delegate();
        }

        public Entry<K, V> ceilingEntry(K k) {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().ceilingEntry(k), this.mutex);
            }
            return access$700;
        }

        public K ceilingKey(K k) {
            Object ceilingKey;
            synchronized (this.mutex) {
                ceilingKey = delegate().ceilingKey(k);
            }
            return ceilingKey;
        }

        public NavigableSet<K> descendingKeySet() {
            synchronized (this.mutex) {
                NavigableSet navigableSet;
                if (this.descendingKeySet == null) {
                    navigableSet = Synchronized.navigableSet(delegate().descendingKeySet(), this.mutex);
                    this.descendingKeySet = navigableSet;
                    return navigableSet;
                }
                navigableSet = this.descendingKeySet;
                return navigableSet;
            }
        }

        public NavigableMap<K, V> descendingMap() {
            synchronized (this.mutex) {
                NavigableMap navigableMap;
                if (this.descendingMap == null) {
                    navigableMap = Synchronized.navigableMap(delegate().descendingMap(), this.mutex);
                    this.descendingMap = navigableMap;
                    return navigableMap;
                }
                navigableMap = this.descendingMap;
                return navigableMap;
            }
        }

        public Entry<K, V> firstEntry() {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().firstEntry(), this.mutex);
            }
            return access$700;
        }

        public Entry<K, V> floorEntry(K k) {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().floorEntry(k), this.mutex);
            }
            return access$700;
        }

        public K floorKey(K k) {
            Object floorKey;
            synchronized (this.mutex) {
                floorKey = delegate().floorKey(k);
            }
            return floorKey;
        }

        public NavigableMap<K, V> headMap(K k, boolean z) {
            NavigableMap navigableMap;
            synchronized (this.mutex) {
                navigableMap = Synchronized.navigableMap(delegate().headMap(k, z), this.mutex);
            }
            return navigableMap;
        }

        public Entry<K, V> higherEntry(K k) {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().higherEntry(k), this.mutex);
            }
            return access$700;
        }

        public K higherKey(K k) {
            Object higherKey;
            synchronized (this.mutex) {
                higherKey = delegate().higherKey(k);
            }
            return higherKey;
        }

        public Entry<K, V> lastEntry() {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().lastEntry(), this.mutex);
            }
            return access$700;
        }

        public Entry<K, V> lowerEntry(K k) {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().lowerEntry(k), this.mutex);
            }
            return access$700;
        }

        public K lowerKey(K k) {
            Object lowerKey;
            synchronized (this.mutex) {
                lowerKey = delegate().lowerKey(k);
            }
            return lowerKey;
        }

        public Set<K> keySet() {
            return navigableKeySet();
        }

        public NavigableSet<K> navigableKeySet() {
            synchronized (this.mutex) {
                NavigableSet navigableSet;
                if (this.navigableKeySet == null) {
                    navigableSet = Synchronized.navigableSet(delegate().navigableKeySet(), this.mutex);
                    this.navigableKeySet = navigableSet;
                    return navigableSet;
                }
                navigableSet = this.navigableKeySet;
                return navigableSet;
            }
        }

        public Entry<K, V> pollFirstEntry() {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().pollFirstEntry(), this.mutex);
            }
            return access$700;
        }

        public Entry<K, V> pollLastEntry() {
            Entry access$700;
            synchronized (this.mutex) {
                access$700 = Synchronized.nullableSynchronizedEntry(delegate().pollLastEntry(), this.mutex);
            }
            return access$700;
        }

        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            NavigableMap navigableMap;
            synchronized (this.mutex) {
                navigableMap = Synchronized.navigableMap(delegate().subMap(k, z, k2, z2), this.mutex);
            }
            return navigableMap;
        }

        public NavigableMap<K, V> tailMap(K k, boolean z) {
            NavigableMap navigableMap;
            synchronized (this.mutex) {
                navigableMap = Synchronized.navigableMap(delegate().tailMap(k, z), this.mutex);
            }
            return navigableMap;
        }

        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    private static class SynchronizedRandomAccessList<E> extends SynchronizedList<E> implements RandomAccess {
        private static final long serialVersionUID = 0;

        SynchronizedRandomAccessList(List<E> list, @Nullable Object obj) {
            super(list, obj);
        }
    }

    static class SynchronizedSortedSet<E> extends SynchronizedSet<E> implements SortedSet<E> {
        private static final long serialVersionUID = 0;

        SynchronizedSortedSet(SortedSet<E> sortedSet, @Nullable Object obj) {
            super(sortedSet, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public SortedSet<E> delegate() {
            return (SortedSet) super.delegate();
        }

        public Comparator<? super E> comparator() {
            Comparator comparator;
            synchronized (this.mutex) {
                comparator = delegate().comparator();
            }
            return comparator;
        }

        public SortedSet<E> subSet(E e, E e2) {
            SortedSet access$100;
            synchronized (this.mutex) {
                access$100 = Synchronized.sortedSet(delegate().subSet(e, e2), this.mutex);
            }
            return access$100;
        }

        public SortedSet<E> headSet(E e) {
            SortedSet access$100;
            synchronized (this.mutex) {
                access$100 = Synchronized.sortedSet(delegate().headSet(e), this.mutex);
            }
            return access$100;
        }

        public SortedSet<E> tailSet(E e) {
            SortedSet access$100;
            synchronized (this.mutex) {
                access$100 = Synchronized.sortedSet(delegate().tailSet(e), this.mutex);
            }
            return access$100;
        }

        public E first() {
            Object first;
            synchronized (this.mutex) {
                first = delegate().first();
            }
            return first;
        }

        public E last() {
            Object last;
            synchronized (this.mutex) {
                last = delegate().last();
            }
            return last;
        }
    }

    private static class SynchronizedSortedSetMultimap<K, V> extends SynchronizedSetMultimap<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        SynchronizedSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap, @Nullable Object obj) {
            super(sortedSetMultimap, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }

        public SortedSet<V> get(K k) {
            SortedSet access$100;
            synchronized (this.mutex) {
                access$100 = Synchronized.sortedSet(delegate().get(k), this.mutex);
            }
            return access$100;
        }

        public SortedSet<V> removeAll(Object obj) {
            SortedSet removeAll;
            synchronized (this.mutex) {
                removeAll = delegate().removeAll(obj);
            }
            return removeAll;
        }

        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            SortedSet replaceValues;
            synchronized (this.mutex) {
                replaceValues = delegate().replaceValues(k, iterable);
            }
            return replaceValues;
        }

        public Comparator<? super V> valueComparator() {
            Comparator valueComparator;
            synchronized (this.mutex) {
                valueComparator = delegate().valueComparator();
            }
            return valueComparator;
        }
    }

    @GwtIncompatible("NavigableSet")
    @VisibleForTesting
    static class SynchronizedNavigableSet<E> extends SynchronizedSortedSet<E> implements NavigableSet<E> {
        private static final long serialVersionUID = 0;
        transient NavigableSet<E> descendingSet;

        SynchronizedNavigableSet(NavigableSet<E> navigableSet, @Nullable Object obj) {
            super(navigableSet, obj);
        }

        /* Access modifiers changed, original: 0000 */
        public NavigableSet<E> delegate() {
            return (NavigableSet) super.delegate();
        }

        public E ceiling(E e) {
            Object ceiling;
            synchronized (this.mutex) {
                ceiling = delegate().ceiling(e);
            }
            return ceiling;
        }

        public Iterator<E> descendingIterator() {
            return delegate().descendingIterator();
        }

        public NavigableSet<E> descendingSet() {
            synchronized (this.mutex) {
                NavigableSet navigableSet;
                if (this.descendingSet == null) {
                    navigableSet = Synchronized.navigableSet(delegate().descendingSet(), this.mutex);
                    this.descendingSet = navigableSet;
                    return navigableSet;
                }
                navigableSet = this.descendingSet;
                return navigableSet;
            }
        }

        public E floor(E e) {
            Object floor;
            synchronized (this.mutex) {
                floor = delegate().floor(e);
            }
            return floor;
        }

        public NavigableSet<E> headSet(E e, boolean z) {
            NavigableSet navigableSet;
            synchronized (this.mutex) {
                navigableSet = Synchronized.navigableSet(delegate().headSet(e, z), this.mutex);
            }
            return navigableSet;
        }

        public E higher(E e) {
            Object higher;
            synchronized (this.mutex) {
                higher = delegate().higher(e);
            }
            return higher;
        }

        public E lower(E e) {
            Object lower;
            synchronized (this.mutex) {
                lower = delegate().lower(e);
            }
            return lower;
        }

        public E pollFirst() {
            Object pollFirst;
            synchronized (this.mutex) {
                pollFirst = delegate().pollFirst();
            }
            return pollFirst;
        }

        public E pollLast() {
            Object pollLast;
            synchronized (this.mutex) {
                pollLast = delegate().pollLast();
            }
            return pollLast;
        }

        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            NavigableSet navigableSet;
            synchronized (this.mutex) {
                navigableSet = Synchronized.navigableSet(delegate().subSet(e, z, e2, z2), this.mutex);
            }
            return navigableSet;
        }

        public NavigableSet<E> tailSet(E e, boolean z) {
            NavigableSet navigableSet;
            synchronized (this.mutex) {
                navigableSet = Synchronized.navigableSet(delegate().tailSet(e, z), this.mutex);
            }
            return navigableSet;
        }

        public SortedSet<E> headSet(E e) {
            return headSet(e, false);
        }

        public SortedSet<E> subSet(E e, E e2) {
            return subSet(e, true, e2, false);
        }

        public SortedSet<E> tailSet(E e) {
            return tailSet(e, true);
        }
    }

    private Synchronized() {
    }

    private static <E> Collection<E> collection(Collection<E> collection, @Nullable Object obj) {
        return new SynchronizedCollection(collection, obj, null);
    }

    @VisibleForTesting
    static <E> Set<E> set(Set<E> set, @Nullable Object obj) {
        return new SynchronizedSet(set, obj);
    }

    private static <E> SortedSet<E> sortedSet(SortedSet<E> sortedSet, @Nullable Object obj) {
        return new SynchronizedSortedSet(sortedSet, obj);
    }

    private static <E> List<E> list(List<E> list, @Nullable Object obj) {
        return list instanceof RandomAccess ? new SynchronizedRandomAccessList(list, obj) : new SynchronizedList(list, obj);
    }

    static <E> Multiset<E> multiset(Multiset<E> multiset, @Nullable Object obj) {
        return ((multiset instanceof SynchronizedMultiset) || (multiset instanceof ImmutableMultiset)) ? multiset : new SynchronizedMultiset(multiset, obj);
    }

    static <K, V> Multimap<K, V> multimap(Multimap<K, V> multimap, @Nullable Object obj) {
        return ((multimap instanceof SynchronizedMultimap) || (multimap instanceof ImmutableMultimap)) ? multimap : new SynchronizedMultimap(multimap, obj);
    }

    static <K, V> ListMultimap<K, V> listMultimap(ListMultimap<K, V> listMultimap, @Nullable Object obj) {
        return ((listMultimap instanceof SynchronizedListMultimap) || (listMultimap instanceof ImmutableListMultimap)) ? listMultimap : new SynchronizedListMultimap(listMultimap, obj);
    }

    static <K, V> SetMultimap<K, V> setMultimap(SetMultimap<K, V> setMultimap, @Nullable Object obj) {
        return ((setMultimap instanceof SynchronizedSetMultimap) || (setMultimap instanceof ImmutableSetMultimap)) ? setMultimap : new SynchronizedSetMultimap(setMultimap, obj);
    }

    static <K, V> SortedSetMultimap<K, V> sortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap, @Nullable Object obj) {
        if (sortedSetMultimap instanceof SynchronizedSortedSetMultimap) {
            return sortedSetMultimap;
        }
        return new SynchronizedSortedSetMultimap(sortedSetMultimap, obj);
    }

    private static <E> Collection<E> typePreservingCollection(Collection<E> collection, @Nullable Object obj) {
        if (collection instanceof SortedSet) {
            return sortedSet((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return set((Set) collection, obj);
        }
        if (collection instanceof List) {
            return list((List) collection, obj);
        }
        return collection(collection, obj);
    }

    private static <E> Set<E> typePreservingSet(Set<E> set, @Nullable Object obj) {
        if (set instanceof SortedSet) {
            return sortedSet((SortedSet) set, obj);
        }
        return set(set, obj);
    }

    @VisibleForTesting
    static <K, V> Map<K, V> map(Map<K, V> map, @Nullable Object obj) {
        return new SynchronizedMap(map, obj);
    }

    static <K, V> SortedMap<K, V> sortedMap(SortedMap<K, V> sortedMap, @Nullable Object obj) {
        return new SynchronizedSortedMap(sortedMap, obj);
    }

    static <K, V> BiMap<K, V> biMap(BiMap<K, V> biMap, @Nullable Object obj) {
        return ((biMap instanceof SynchronizedBiMap) || (biMap instanceof ImmutableBiMap)) ? biMap : new SynchronizedBiMap(biMap, obj, null, null);
    }

    @GwtIncompatible("NavigableSet")
    static <E> NavigableSet<E> navigableSet(NavigableSet<E> navigableSet, @Nullable Object obj) {
        return new SynchronizedNavigableSet(navigableSet, obj);
    }

    @GwtIncompatible("NavigableSet")
    static <E> NavigableSet<E> navigableSet(NavigableSet<E> navigableSet) {
        return navigableSet(navigableSet, null);
    }

    @GwtIncompatible("NavigableMap")
    static <K, V> NavigableMap<K, V> navigableMap(NavigableMap<K, V> navigableMap) {
        return navigableMap(navigableMap, null);
    }

    @GwtIncompatible("NavigableMap")
    static <K, V> NavigableMap<K, V> navigableMap(NavigableMap<K, V> navigableMap, @Nullable Object obj) {
        return new SynchronizedNavigableMap(navigableMap, obj);
    }

    @GwtIncompatible("works but is needed only for NavigableMap")
    private static <K, V> Entry<K, V> nullableSynchronizedEntry(@Nullable Entry<K, V> entry, @Nullable Object obj) {
        return entry == null ? null : new SynchronizedEntry(entry, obj);
    }

    static <E> Queue<E> queue(Queue<E> queue, @Nullable Object obj) {
        return queue instanceof SynchronizedQueue ? queue : new SynchronizedQueue(queue, obj);
    }

    @GwtIncompatible("Deque")
    static <E> Deque<E> deque(Deque<E> deque, @Nullable Object obj) {
        return new SynchronizedDeque(deque, obj);
    }
}
