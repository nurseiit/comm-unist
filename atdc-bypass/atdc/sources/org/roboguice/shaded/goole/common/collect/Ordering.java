package org.roboguice.shaded.goole.common.collect;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible
public abstract class Ordering<T> implements Comparator<T> {
    static final int LEFT_IS_GREATER = 1;
    static final int RIGHT_IS_GREATER = -1;

    private static class ArbitraryOrderingHolder {
        static final Ordering<Object> ARBITRARY_ORDERING = new ArbitraryOrdering();

        private ArbitraryOrderingHolder() {
        }
    }

    @VisibleForTesting
    static class IncomparableValueException extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object value;

        IncomparableValueException(Object obj) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Cannot compare value: ");
            stringBuilder.append(obj);
            super(stringBuilder.toString());
            this.value = obj;
        }
    }

    @VisibleForTesting
    static class ArbitraryOrdering extends Ordering<Object> {
        private Map<Object, Integer> uids = Platform.tryWeakKeys(new MapMaker()).makeComputingMap(new Function<Object, Integer>() {
            final AtomicInteger counter = new AtomicInteger(0);

            public Integer apply(Object obj) {
                return Integer.valueOf(this.counter.getAndIncrement());
            }
        });

        public String toString() {
            return "Ordering.arbitrary()";
        }

        ArbitraryOrdering() {
        }

        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            int i = -1;
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int identityHashCode = identityHashCode(obj);
            int identityHashCode2 = identityHashCode(obj2);
            if (identityHashCode != identityHashCode2) {
                if (identityHashCode >= identityHashCode2) {
                    i = 1;
                }
                return i;
            }
            int compareTo = ((Integer) this.uids.get(obj)).compareTo((Integer) this.uids.get(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        /* Access modifiers changed, original: 0000 */
        public int identityHashCode(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public abstract int compare(@Nullable T t, @Nullable T t2);

    @GwtCompatible(serializable = true)
    public static <C extends Comparable> Ordering<C> natural() {
        return NaturalOrdering.INSTANCE;
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new ComparatorOrdering(comparator);
    }

    @Deprecated
    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        return (Ordering) Preconditions.checkNotNull(ordering);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(List<T> list) {
        return new ExplicitOrdering((List) list);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.asList(t, tArr));
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> allEqual() {
        return AllEqualOrdering.INSTANCE;
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> usingToString() {
        return UsingToStringOrdering.INSTANCE;
    }

    public static Ordering<Object> arbitrary() {
        return ArbitraryOrderingHolder.ARBITRARY_ORDERING;
    }

    protected Ordering() {
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> reverse() {
        return new ReverseOrdering(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsFirst() {
        return new NullsFirstOrdering(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsLast() {
        return new NullsLastOrdering(this);
    }

    @GwtCompatible(serializable = true)
    public <F> Ordering<F> onResultOf(Function<F, ? extends T> function) {
        return new ByFunctionOrdering(function, this);
    }

    /* Access modifiers changed, original: 0000 */
    public <T2 extends T> Ordering<Entry<T2, ?>> onKeys() {
        return onResultOf(Maps.keyFunction());
    }

    @GwtCompatible(serializable = true)
    public <U extends T> Ordering<U> compound(Comparator<? super U> comparator) {
        return new CompoundOrdering(this, (Comparator) Preconditions.checkNotNull(comparator));
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new CompoundOrdering(iterable);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<Iterable<S>> lexicographical() {
        return new LexicographicalOrdering(this);
    }

    public <E extends T> E min(Iterator<E> it) {
        Object next = it.next();
        while (it.hasNext()) {
            next = min(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return min(iterable.iterator());
    }

    public <E extends T> E min(@Nullable E e, @Nullable E e2) {
        return compare(e, e2) <= 0 ? e : e2;
    }

    public <E extends T> E min(@Nullable E e, @Nullable E e2, @Nullable E e3, E... eArr) {
        Object min = min(min(e, e2), e3);
        for (Object min2 : eArr) {
            min = min(min, min2);
        }
        return min;
    }

    public <E extends T> E max(Iterator<E> it) {
        Object next = it.next();
        while (it.hasNext()) {
            next = max(next, it.next());
        }
        return next;
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return max(iterable.iterator());
    }

    public <E extends T> E max(@Nullable E e, @Nullable E e2) {
        return compare(e, e2) >= 0 ? e : e2;
    }

    public <E extends T> E max(@Nullable E e, @Nullable E e2, @Nullable E e3, E... eArr) {
        Object max = max(max(e, e2), e3);
        for (Object max2 : eArr) {
            max = max(max, max2);
        }
        return max;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (((long) collection.size()) <= ((long) i) * 2) {
                Object[] toArray = collection.toArray();
                Arrays.sort(toArray, this);
                if (toArray.length > i) {
                    toArray = ObjectArrays.arraysCopyOf(toArray, i);
                }
                return Collections.unmodifiableList(Arrays.asList(toArray));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        Preconditions.checkNotNull(it);
        CollectPreconditions.checkNonnegative(i, "k");
        if (i == 0 || !it.hasNext()) {
            return ImmutableList.of();
        }
        if (i >= 1073741823) {
            ArrayList newArrayList = Lists.newArrayList((Iterator) it);
            Collections.sort(newArrayList, this);
            if (newArrayList.size() > i) {
                newArrayList.subList(i, newArrayList.size()).clear();
            }
            newArrayList.trimToSize();
            return Collections.unmodifiableList(newArrayList);
        }
        Object next;
        int i2;
        int i3 = i * 2;
        Object[] objArr = new Object[i3];
        Object next2 = it.next();
        objArr[0] = next2;
        Object obj = next2;
        int i4 = 1;
        while (i4 < i && it.hasNext()) {
            next = it.next();
            i2 = i4 + 1;
            objArr[i4] = next;
            obj = max(obj, next);
            i4 = i2;
        }
        while (it.hasNext()) {
            next = it.next();
            if (compare(next, obj) < 0) {
                i2 = i4 + 1;
                objArr[i4] = next;
                if (i2 == i3) {
                    int i5 = i3 - 1;
                    i4 = 0;
                    int i6 = 0;
                    while (i4 < i5) {
                        i2 = partition(objArr, i4, i5, ((i4 + i5) + 1) >>> 1);
                        if (i2 <= i) {
                            if (i2 >= i) {
                                break;
                            }
                            i4 = Math.max(i2, i4 + 1);
                            i6 = i2;
                        } else {
                            i5 = i2 - 1;
                        }
                    }
                    next2 = objArr[i6];
                    while (true) {
                        i6++;
                        if (i6 >= i) {
                            break;
                        }
                        next2 = max(next2, objArr[i6]);
                    }
                    obj = next2;
                    i4 = i;
                } else {
                    i4 = i2;
                }
            }
        }
        Arrays.sort(objArr, 0, i4, this);
        return Collections.unmodifiableList(Arrays.asList(ObjectArrays.arraysCopyOf(objArr, Math.min(i4, i))));
    }

    private <E extends T> int partition(E[] eArr, int i, int i2, int i3) {
        Object obj = eArr[i3];
        eArr[i3] = eArr[i2];
        eArr[i2] = obj;
        i3 = i;
        while (i < i2) {
            if (compare(eArr[i], obj) < 0) {
                ObjectArrays.swap(eArr, i3, i);
                i3++;
            }
            i++;
        }
        ObjectArrays.swap(eArr, i2, i3);
        return i3;
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf((Iterable) iterable, i);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf((Iterator) it, i);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] toArray = Iterables.toArray(iterable);
        Arrays.sort(toArray, this);
        return Lists.newArrayList(Arrays.asList(toArray));
    }

    public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        Object[] toArray = Iterables.toArray(iterable);
        for (Object checkNotNull : toArray) {
            Preconditions.checkNotNull(checkNotNull);
        }
        Arrays.sort(toArray, this);
        return ImmutableList.asImmutableList(toArray);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            while (it.hasNext()) {
                Object next2 = it.next();
                if (compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            while (it.hasNext()) {
                Object next2 = it.next();
                if (compare(next, next2) >= 0) {
                    return false;
                }
                next = next2;
            }
        }
        return true;
    }

    public int binarySearch(List<? extends T> list, @Nullable T t) {
        return Collections.binarySearch(list, t, this);
    }
}
