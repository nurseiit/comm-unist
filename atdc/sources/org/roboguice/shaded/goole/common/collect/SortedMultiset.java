package org.roboguice.shaded.goole.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.collect.Multiset.Entry;

@Beta
@GwtCompatible(emulated = true)
public interface SortedMultiset<E> extends SortedMultisetBridge<E>, SortedIterable<E> {
    Comparator<? super E> comparator();

    SortedMultiset<E> descendingMultiset();

    NavigableSet<E> elementSet();

    Entry<E> firstEntry();

    SortedMultiset<E> headMultiset(E e, BoundType boundType);

    Iterator<E> iterator();

    Entry<E> lastEntry();

    Entry<E> pollFirstEntry();

    Entry<E> pollLastEntry();

    SortedMultiset<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2);

    SortedMultiset<E> tailMultiset(E e, BoundType boundType);
}
