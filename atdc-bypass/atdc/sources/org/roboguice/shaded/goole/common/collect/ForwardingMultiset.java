package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.collect.Multiset.Entry;

@GwtCompatible
public abstract class ForwardingMultiset<E> extends ForwardingCollection<E> implements Multiset<E> {

    @Beta
    protected class StandardElementSet extends ElementSet<E> {
        /* Access modifiers changed, original: 0000 */
        public Multiset<E> multiset() {
            return ForwardingMultiset.this;
        }
    }

    public abstract Multiset<E> delegate();

    protected ForwardingMultiset() {
    }

    public int count(Object obj) {
        return delegate().count(obj);
    }

    public int add(E e, int i) {
        return delegate().add(e, i);
    }

    public int remove(Object obj, int i) {
        return delegate().remove(obj, i);
    }

    public Set<E> elementSet() {
        return delegate().elementSet();
    }

    public Set<Entry<E>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public int setCount(E e, int i) {
        return delegate().setCount(e, i);
    }

    public boolean setCount(E e, int i, int i2) {
        return delegate().setCount(e, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardContains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    /* Access modifiers changed, original: protected */
    public void standardClear() {
        Iterators.clear(entrySet().iterator());
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public int standardCount(@Nullable Object obj) {
        for (Entry entry : entrySet()) {
            if (Objects.equal(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    /* Access modifiers changed, original: protected */
    public boolean standardAdd(E e) {
        add(e, 1);
        return true;
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public boolean standardAddAll(Collection<? extends E> collection) {
        return Multisets.addAllImpl(this, collection);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRemoveAll(Collection<?> collection) {
        return Multisets.removeAllImpl(this, collection);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRetainAll(Collection<?> collection) {
        return Multisets.retainAllImpl(this, collection);
    }

    /* Access modifiers changed, original: protected */
    public int standardSetCount(E e, int i) {
        return Multisets.setCountImpl(this, e, i);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardSetCount(E e, int i, int i2) {
        return Multisets.setCountImpl(this, e, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public Iterator<E> standardIterator() {
        return Multisets.iteratorImpl(this);
    }

    /* Access modifiers changed, original: protected */
    public int standardSize() {
        return Multisets.sizeImpl(this);
    }

    /* Access modifiers changed, original: protected */
    public boolean standardEquals(@Nullable Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public int standardHashCode() {
        return entrySet().hashCode();
    }

    /* Access modifiers changed, original: protected */
    public String standardToString() {
        return entrySet().toString();
    }
}
