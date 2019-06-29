package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Objects;

@GwtCompatible
public abstract class ForwardingCollection<E> extends ForwardingObject implements Collection<E> {
    public abstract Collection<E> delegate();

    protected ForwardingCollection() {
    }

    public Iterator<E> iterator() {
        return delegate().iterator();
    }

    public int size() {
        return delegate().size();
    }

    public boolean removeAll(Collection<?> collection) {
        return delegate().removeAll(collection);
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public boolean contains(Object obj) {
        return delegate().contains(obj);
    }

    public boolean add(E e) {
        return delegate().add(e);
    }

    public boolean remove(Object obj) {
        return delegate().remove(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return delegate().containsAll(collection);
    }

    public boolean addAll(Collection<? extends E> collection) {
        return delegate().addAll(collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return delegate().retainAll(collection);
    }

    public void clear() {
        delegate().clear();
    }

    public Object[] toArray() {
        return delegate().toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return delegate().toArray(tArr);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardContains(@Nullable Object obj) {
        return Iterators.contains(iterator(), obj);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardContainsAll(Collection<?> collection) {
        return Collections2.containsAllImpl(this, collection);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardAddAll(Collection<? extends E> collection) {
        return Iterators.addAll(this, collection.iterator());
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRemove(@Nullable Object obj) {
        Iterator it = iterator();
        while (it.hasNext()) {
            if (Objects.equal(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRemoveAll(Collection<?> collection) {
        return Iterators.removeAll(iterator(), collection);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRetainAll(Collection<?> collection) {
        return Iterators.retainAll(iterator(), collection);
    }

    /* Access modifiers changed, original: protected */
    public void standardClear() {
        Iterators.clear(iterator());
    }

    /* Access modifiers changed, original: protected */
    public boolean standardIsEmpty() {
        return iterator().hasNext() ^ 1;
    }

    /* Access modifiers changed, original: protected */
    public String standardToString() {
        return Collections2.toStringImpl(this);
    }

    /* Access modifiers changed, original: protected */
    public Object[] standardToArray() {
        return toArray(new Object[size()]);
    }

    /* Access modifiers changed, original: protected */
    public <T> T[] standardToArray(T[] tArr) {
        return ObjectArrays.toArrayImpl(this, tArr);
    }
}
