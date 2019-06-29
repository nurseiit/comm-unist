package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingList<E> extends ForwardingCollection<E> implements List<E> {
    public abstract List<E> delegate();

    protected ForwardingList() {
    }

    public void add(int i, E e) {
        delegate().add(i, e);
    }

    public boolean addAll(int i, Collection<? extends E> collection) {
        return delegate().addAll(i, collection);
    }

    public E get(int i) {
        return delegate().get(i);
    }

    public int indexOf(Object obj) {
        return delegate().indexOf(obj);
    }

    public int lastIndexOf(Object obj) {
        return delegate().lastIndexOf(obj);
    }

    public ListIterator<E> listIterator() {
        return delegate().listIterator();
    }

    public ListIterator<E> listIterator(int i) {
        return delegate().listIterator(i);
    }

    public E remove(int i) {
        return delegate().remove(i);
    }

    public E set(int i, E e) {
        return delegate().set(i, e);
    }

    public List<E> subList(int i, int i2) {
        return delegate().subList(i, i2);
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    /* Access modifiers changed, original: protected */
    public boolean standardAdd(E e) {
        add(size(), e);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public boolean standardAddAll(int i, Iterable<? extends E> iterable) {
        return Lists.addAllImpl(this, i, iterable);
    }

    /* Access modifiers changed, original: protected */
    public int standardIndexOf(@Nullable Object obj) {
        return Lists.indexOfImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public int standardLastIndexOf(@Nullable Object obj) {
        return Lists.lastIndexOfImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public Iterator<E> standardIterator() {
        return listIterator();
    }

    /* Access modifiers changed, original: protected */
    public ListIterator<E> standardListIterator() {
        return listIterator(0);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public ListIterator<E> standardListIterator(int i) {
        return Lists.listIteratorImpl(this, i);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public List<E> standardSubList(int i, int i2) {
        return Lists.subListImpl(this, i, i2);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public boolean standardEquals(@Nullable Object obj) {
        return Lists.equalsImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public int standardHashCode() {
        return Lists.hashCodeImpl(this);
    }
}
