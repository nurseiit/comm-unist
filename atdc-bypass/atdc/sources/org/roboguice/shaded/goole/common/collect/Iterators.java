package org.roboguice.shaded.goole.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Joiner;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Optional;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.base.Predicate;
import org.roboguice.shaded.goole.common.base.Predicates;

@GwtCompatible(emulated = true)
public final class Iterators {
    static final UnmodifiableListIterator<Object> EMPTY_LIST_ITERATOR = new UnmodifiableListIterator<Object>() {
        public boolean hasNext() {
            return false;
        }

        public boolean hasPrevious() {
            return false;
        }

        public int nextIndex() {
            return 0;
        }

        public int previousIndex() {
            return -1;
        }

        public Object next() {
            throw new NoSuchElementException();
        }

        public Object previous() {
            throw new NoSuchElementException();
        }
    };
    private static final Iterator<Object> EMPTY_MODIFIABLE_ITERATOR = new Iterator<Object>() {
        public boolean hasNext() {
            return false;
        }

        public Object next() {
            throw new NoSuchElementException();
        }

        public void remove() {
            CollectPreconditions.checkRemove(false);
        }
    };

    private static class MergingIterator<T> extends UnmodifiableIterator<T> {
        final Queue<PeekingIterator<T>> queue;

        public MergingIterator(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.queue = new PriorityQueue(2, new Comparator<PeekingIterator<T>>() {
                public int compare(PeekingIterator<T> peekingIterator, PeekingIterator<T> peekingIterator2) {
                    return comparator.compare(peekingIterator.peek(), peekingIterator2.peek());
                }
            });
            for (Iterator it : iterable) {
                if (it.hasNext()) {
                    this.queue.add(Iterators.peekingIterator(it));
                }
            }
        }

        public boolean hasNext() {
            return this.queue.isEmpty() ^ 1;
        }

        public T next() {
            PeekingIterator peekingIterator = (PeekingIterator) this.queue.remove();
            Object next = peekingIterator.next();
            if (peekingIterator.hasNext()) {
                this.queue.add(peekingIterator);
            }
            return next;
        }
    }

    private static class PeekingImpl<E> implements PeekingIterator<E> {
        private boolean hasPeeked;
        private final Iterator<? extends E> iterator;
        private E peekedElement;

        public PeekingImpl(Iterator<? extends E> it) {
            this.iterator = (Iterator) Preconditions.checkNotNull(it);
        }

        public boolean hasNext() {
            return this.hasPeeked || this.iterator.hasNext();
        }

        public E next() {
            if (!this.hasPeeked) {
                return this.iterator.next();
            }
            Object obj = this.peekedElement;
            this.hasPeeked = false;
            this.peekedElement = null;
            return obj;
        }

        public void remove() {
            Preconditions.checkState(this.hasPeeked ^ 1, "Can't remove after you've peeked at next");
            this.iterator.remove();
        }

        public E peek() {
            if (!this.hasPeeked) {
                this.peekedElement = this.iterator.next();
                this.hasPeeked = true;
            }
            return this.peekedElement;
        }
    }

    private Iterators() {
    }

    public static <T> UnmodifiableIterator<T> emptyIterator() {
        return emptyListIterator();
    }

    static <T> UnmodifiableListIterator<T> emptyListIterator() {
        return EMPTY_LIST_ITERATOR;
    }

    static <T> Iterator<T> emptyModifiableIterator() {
        return EMPTY_MODIFIABLE_ITERATOR;
    }

    public static <T> UnmodifiableIterator<T> unmodifiableIterator(final Iterator<T> it) {
        Preconditions.checkNotNull(it);
        if (it instanceof UnmodifiableIterator) {
            return (UnmodifiableIterator) it;
        }
        return new UnmodifiableIterator<T>() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public T next() {
                return it.next();
            }
        };
    }

    @Deprecated
    public static <T> UnmodifiableIterator<T> unmodifiableIterator(UnmodifiableIterator<T> unmodifiableIterator) {
        return (UnmodifiableIterator) Preconditions.checkNotNull(unmodifiableIterator);
    }

    public static int size(Iterator<?> it) {
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
        }
        return i;
    }

    public static boolean contains(Iterator<?> it, @Nullable Object obj) {
        return any(it, Predicates.equalTo(obj));
    }

    public static boolean removeAll(Iterator<?> it, Collection<?> collection) {
        return removeIf(it, Predicates.in(collection));
    }

    public static <T> boolean removeIf(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean retainAll(Iterator<?> it, Collection<?> collection) {
        return removeIf(it, Predicates.not(Predicates.in(collection)));
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext()) {
                return false;
            }
            if (!Objects.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return it2.hasNext() ^ 1;
    }

    public static String toString(Iterator<?> it) {
        Joiner joiner = Collections2.STANDARD_JOINER;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('[');
        StringBuilder appendTo = joiner.appendTo(stringBuilder, (Iterator) it);
        appendTo.append(']');
        return appendTo.toString();
    }

    public static <T> T getOnlyElement(Iterator<T> it) {
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("expected one element but was: <");
        stringBuilder2.append(next);
        stringBuilder.append(stringBuilder2.toString());
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append(", ");
            stringBuilder2.append(it.next());
            stringBuilder.append(stringBuilder2.toString());
        }
        if (it.hasNext()) {
            stringBuilder.append(", ...");
        }
        stringBuilder.append('>');
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    @Nullable
    public static <T> T getOnlyElement(Iterator<? extends T> it, @Nullable T t) {
        return it.hasNext() ? getOnlyElement(it) : t;
    }

    @GwtIncompatible("Array.newInstance(Class, int)")
    public static <T> T[] toArray(Iterator<? extends T> it, Class<T> cls) {
        return Iterables.toArray(Lists.newArrayList((Iterator) it), cls);
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        int i = 0;
        while (it.hasNext()) {
            i |= collection.add(it.next());
        }
        return i;
    }

    public static int frequency(Iterator<?> it, @Nullable Object obj) {
        return size(filter((Iterator) it, Predicates.equalTo(obj)));
    }

    public static <T> Iterator<T> cycle(final Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new Iterator<T>() {
            Iterator<T> iterator = Iterators.emptyIterator();
            Iterator<T> removeFrom;

            public boolean hasNext() {
                if (!this.iterator.hasNext()) {
                    this.iterator = iterable.iterator();
                }
                return this.iterator.hasNext();
            }

            public T next() {
                if (hasNext()) {
                    this.removeFrom = this.iterator;
                    return this.iterator.next();
                }
                throw new NoSuchElementException();
            }

            public void remove() {
                CollectPreconditions.checkRemove(this.removeFrom != null);
                this.removeFrom.remove();
                this.removeFrom = null;
            }
        };
    }

    public static <T> Iterator<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList((Object[]) tArr));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2) {
        return concat(ImmutableList.of(it, it2).iterator());
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        return concat(ImmutableList.of(it, it2, it3).iterator());
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        return concat(ImmutableList.of(it, it2, it3, it4).iterator());
    }

    public static <T> Iterator<T> concat(Iterator<? extends T>... itArr) {
        return concat(ImmutableList.copyOf((Object[]) itArr).iterator());
    }

    public static <T> Iterator<T> concat(final Iterator<? extends Iterator<? extends T>> it) {
        Preconditions.checkNotNull(it);
        return new Iterator<T>() {
            Iterator<? extends T> current = Iterators.emptyIterator();
            Iterator<? extends T> removeFrom;

            public boolean hasNext() {
                boolean hasNext;
                while (true) {
                    hasNext = ((Iterator) Preconditions.checkNotNull(this.current)).hasNext();
                    if (hasNext || !it.hasNext()) {
                        return hasNext;
                    }
                    this.current = (Iterator) it.next();
                }
                return hasNext;
            }

            public T next() {
                if (hasNext()) {
                    this.removeFrom = this.current;
                    return this.current.next();
                }
                throw new NoSuchElementException();
            }

            public void remove() {
                CollectPreconditions.checkRemove(this.removeFrom != null);
                this.removeFrom.remove();
                this.removeFrom = null;
            }
        };
    }

    public static <T> UnmodifiableIterator<List<T>> partition(Iterator<T> it, int i) {
        return partitionImpl(it, i, false);
    }

    public static <T> UnmodifiableIterator<List<T>> paddedPartition(Iterator<T> it, int i) {
        return partitionImpl(it, i, true);
    }

    private static <T> UnmodifiableIterator<List<T>> partitionImpl(final Iterator<T> it, final int i, final boolean z) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i > 0);
        return new UnmodifiableIterator<List<T>>() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public List<T> next() {
                if (hasNext()) {
                    Object[] objArr = new Object[i];
                    int i = 0;
                    while (i < i && it.hasNext()) {
                        objArr[i] = it.next();
                        i++;
                    }
                    for (int i2 = i; i2 < i; i2++) {
                        objArr[i2] = null;
                    }
                    List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
                    return (z || i == i) ? unmodifiableList : unmodifiableList.subList(0, i);
                } else {
                    throw new NoSuchElementException();
                }
            }
        };
    }

    public static <T> UnmodifiableIterator<T> filter(final Iterator<T> it, final Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        return new AbstractIterator<T>() {
            /* Access modifiers changed, original: protected */
            public T computeNext() {
                while (it.hasNext()) {
                    Object next = it.next();
                    if (predicate.apply(next)) {
                        return next;
                    }
                }
                return endOfData();
            }
        };
    }

    @GwtIncompatible("Class.isInstance")
    public static <T> UnmodifiableIterator<T> filter(Iterator<?> it, Class<T> cls) {
        return filter((Iterator) it, Predicates.instanceOf(cls));
    }

    public static <T> boolean any(Iterator<T> it, Predicate<? super T> predicate) {
        return indexOf(it, predicate) != -1;
    }

    public static <T> boolean all(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            if (!predicate.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> T find(Iterator<T> it, Predicate<? super T> predicate) {
        return filter((Iterator) it, (Predicate) predicate).next();
    }

    @Nullable
    public static <T> T find(Iterator<? extends T> it, Predicate<? super T> predicate, @Nullable T t) {
        return getNext(filter((Iterator) it, (Predicate) predicate), t);
    }

    public static <T> Optional<T> tryFind(Iterator<T> it, Predicate<? super T> predicate) {
        UnmodifiableIterator filter = filter((Iterator) it, (Predicate) predicate);
        return filter.hasNext() ? Optional.of(filter.next()) : Optional.absent();
    }

    public static <T> int indexOf(Iterator<T> it, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static <F, T> Iterator<T> transform(Iterator<F> it, final Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(function);
        return new TransformedIterator<F, T>(it) {
            /* Access modifiers changed, original: 0000 */
            public T transform(F f) {
                return function.apply(f);
            }
        };
    }

    public static <T> T get(Iterator<T> it, int i) {
        checkNonnegative(i);
        int advance = advance(it, i);
        if (it.hasNext()) {
            return it.next();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("position (");
        stringBuilder.append(i);
        stringBuilder.append(") must be less than the number of elements that remained (");
        stringBuilder.append(advance);
        stringBuilder.append(")");
        throw new IndexOutOfBoundsException(stringBuilder.toString());
    }

    static void checkNonnegative(int i) {
        if (i < 0) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("position (");
            stringBuilder.append(i);
            stringBuilder.append(") must not be negative");
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        }
    }

    @Nullable
    public static <T> T get(Iterator<? extends T> it, int i, @Nullable T t) {
        checkNonnegative(i);
        advance(it, i);
        return getNext(it, t);
    }

    @Nullable
    public static <T> T getNext(Iterator<? extends T> it, @Nullable T t) {
        return it.hasNext() ? it.next() : t;
    }

    public static <T> T getLast(Iterator<T> it) {
        Object next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @Nullable
    public static <T> T getLast(Iterator<? extends T> it, @Nullable T t) {
        return it.hasNext() ? getLast(it) : t;
    }

    public static int advance(Iterator<?> it, int i) {
        Preconditions.checkNotNull(it);
        int i2 = 0;
        Preconditions.checkArgument(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it.hasNext()) {
            it.next();
            i2++;
        }
        return i2;
    }

    public static <T> Iterator<T> limit(final Iterator<T> it, final int i) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i >= 0, "limit is negative");
        return new Iterator<T>() {
            private int count;

            public boolean hasNext() {
                return this.count < i && it.hasNext();
            }

            public T next() {
                if (hasNext()) {
                    this.count++;
                    return it.next();
                }
                throw new NoSuchElementException();
            }

            public void remove() {
                it.remove();
            }
        };
    }

    public static <T> Iterator<T> consumingIterator(final Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new UnmodifiableIterator<T>() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public T next() {
                Object next = it.next();
                it.remove();
                return next;
            }
        };
    }

    @Nullable
    static <T> T pollNext(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    static void clear(Iterator<?> it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> UnmodifiableIterator<T> forArray(T... tArr) {
        return forArray(tArr, 0, tArr.length, 0);
    }

    static <T> UnmodifiableListIterator<T> forArray(final T[] tArr, final int i, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0);
        Preconditions.checkPositionIndexes(i, i + i2, tArr.length);
        Preconditions.checkPositionIndex(i3, i2);
        if (i2 == 0) {
            return emptyListIterator();
        }
        return new AbstractIndexedListIterator<T>(i2, i3) {
            /* Access modifiers changed, original: protected */
            public T get(int i) {
                return tArr[i + i];
            }
        };
    }

    public static <T> UnmodifiableIterator<T> singletonIterator(@Nullable final T t) {
        return new UnmodifiableIterator<T>() {
            boolean done;

            public boolean hasNext() {
                return this.done ^ 1;
            }

            public T next() {
                if (this.done) {
                    throw new NoSuchElementException();
                }
                this.done = true;
                return t;
            }
        };
    }

    public static <T> UnmodifiableIterator<T> forEnumeration(final Enumeration<T> enumeration) {
        Preconditions.checkNotNull(enumeration);
        return new UnmodifiableIterator<T>() {
            public boolean hasNext() {
                return enumeration.hasMoreElements();
            }

            public T next() {
                return enumeration.nextElement();
            }
        };
    }

    public static <T> Enumeration<T> asEnumeration(final Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new Enumeration<T>() {
            public boolean hasMoreElements() {
                return it.hasNext();
            }

            public T nextElement() {
                return it.next();
            }
        };
    }

    public static <T> PeekingIterator<T> peekingIterator(Iterator<? extends T> it) {
        if (it instanceof PeekingImpl) {
            return (PeekingImpl) it;
        }
        return new PeekingImpl(it);
    }

    @Deprecated
    public static <T> PeekingIterator<T> peekingIterator(PeekingIterator<T> peekingIterator) {
        return (PeekingIterator) Preconditions.checkNotNull(peekingIterator);
    }

    @Beta
    public static <T> UnmodifiableIterator<T> mergeSorted(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterators");
        Preconditions.checkNotNull(comparator, "comparator");
        return new MergingIterator(iterable, comparator);
    }

    static <T> ListIterator<T> cast(Iterator<T> it) {
        return (ListIterator) it;
    }
}
