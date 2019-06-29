package org.roboguice.shaded.goole.common.collect;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import org.roboguice.shaded.goole.common.annotations.Beta;

public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {

    @Beta
    protected class StandardDescendingSet extends DescendingSet<E> {
        public StandardDescendingSet() {
            super(ForwardingNavigableSet.this);
        }
    }

    public abstract NavigableSet<E> delegate();

    protected ForwardingNavigableSet() {
    }

    public E lower(E e) {
        return delegate().lower(e);
    }

    /* Access modifiers changed, original: protected */
    public E standardLower(E e) {
        return Iterators.getNext(headSet(e, false).descendingIterator(), null);
    }

    public E floor(E e) {
        return delegate().floor(e);
    }

    /* Access modifiers changed, original: protected */
    public E standardFloor(E e) {
        return Iterators.getNext(headSet(e, true).descendingIterator(), null);
    }

    public E ceiling(E e) {
        return delegate().ceiling(e);
    }

    /* Access modifiers changed, original: protected */
    public E standardCeiling(E e) {
        return Iterators.getNext(tailSet(e, true).iterator(), null);
    }

    public E higher(E e) {
        return delegate().higher(e);
    }

    /* Access modifiers changed, original: protected */
    public E standardHigher(E e) {
        return Iterators.getNext(tailSet(e, false).iterator(), null);
    }

    public E pollFirst() {
        return delegate().pollFirst();
    }

    /* Access modifiers changed, original: protected */
    public E standardPollFirst() {
        return Iterators.pollNext(iterator());
    }

    public E pollLast() {
        return delegate().pollLast();
    }

    /* Access modifiers changed, original: protected */
    public E standardPollLast() {
        return Iterators.pollNext(descendingIterator());
    }

    /* Access modifiers changed, original: protected */
    public E standardFirst() {
        return iterator().next();
    }

    /* Access modifiers changed, original: protected */
    public E standardLast() {
        return descendingIterator().next();
    }

    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        return delegate().subSet(e, z, e2, z2);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public NavigableSet<E> standardSubSet(E e, boolean z, E e2, boolean z2) {
        return tailSet(e, z).headSet(e2, z2);
    }

    /* Access modifiers changed, original: protected */
    public SortedSet<E> standardSubSet(E e, E e2) {
        return subSet(e, true, e2, false);
    }

    public NavigableSet<E> headSet(E e, boolean z) {
        return delegate().headSet(e, z);
    }

    /* Access modifiers changed, original: protected */
    public SortedSet<E> standardHeadSet(E e) {
        return headSet(e, false);
    }

    public NavigableSet<E> tailSet(E e, boolean z) {
        return delegate().tailSet(e, z);
    }

    /* Access modifiers changed, original: protected */
    public SortedSet<E> standardTailSet(E e) {
        return tailSet(e, true);
    }
}
