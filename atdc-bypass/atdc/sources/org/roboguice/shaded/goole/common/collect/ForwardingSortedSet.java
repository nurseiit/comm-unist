package org.roboguice.shaded.goole.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingSortedSet<E> extends ForwardingSet<E> implements SortedSet<E> {
    public abstract SortedSet<E> delegate();

    protected ForwardingSortedSet() {
    }

    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    public E first() {
        return delegate().first();
    }

    public SortedSet<E> headSet(E e) {
        return delegate().headSet(e);
    }

    public E last() {
        return delegate().last();
    }

    public SortedSet<E> subSet(E e, E e2) {
        return delegate().subSet(e, e2);
    }

    public SortedSet<E> tailSet(E e) {
        return delegate().tailSet(e);
    }

    private int unsafeCompare(Object obj, Object obj2) {
        Comparator comparator = comparator();
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public boolean standardContains(@Nullable Object obj) {
        boolean z = false;
        try {
            if (unsafeCompare(tailSet(obj).first(), obj) == 0) {
                z = true;
            }
            return z;
        } catch (ClassCastException unused) {
            return false;
        } catch (NoSuchElementException unused2) {
            return false;
        } catch (NullPointerException unused3) {
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public boolean standardRemove(@Nullable Object obj) {
        try {
            Iterator it = tailSet(obj).iterator();
            if (!it.hasNext() || unsafeCompare(it.next(), obj) != 0) {
                return false;
            }
            it.remove();
            return true;
        } catch (ClassCastException unused) {
            return false;
        } catch (NullPointerException unused2) {
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    @Beta
    public SortedSet<E> standardSubSet(E e, E e2) {
        return tailSet(e).headSet(e2);
    }
}
