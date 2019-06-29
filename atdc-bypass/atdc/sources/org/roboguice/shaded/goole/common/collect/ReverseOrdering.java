package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(serializable = true)
final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> forwardOrder;

    ReverseOrdering(Ordering<? super T> ordering) {
        this.forwardOrder = (Ordering) Preconditions.checkNotNull(ordering);
    }

    public int compare(T t, T t2) {
        return this.forwardOrder.compare(t2, t);
    }

    public <S extends T> Ordering<S> reverse() {
        return this.forwardOrder;
    }

    public <E extends T> E min(E e, E e2) {
        return this.forwardOrder.max(e, e2);
    }

    public <E extends T> E min(E e, E e2, E e3, E... eArr) {
        return this.forwardOrder.max(e, e2, e3, eArr);
    }

    public <E extends T> E min(Iterator<E> it) {
        return this.forwardOrder.max((Iterator) it);
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return this.forwardOrder.max((Iterable) iterable);
    }

    public <E extends T> E max(E e, E e2) {
        return this.forwardOrder.min(e, e2);
    }

    public <E extends T> E max(E e, E e2, E e3, E... eArr) {
        return this.forwardOrder.min(e, e2, e3, eArr);
    }

    public <E extends T> E max(Iterator<E> it) {
        return this.forwardOrder.min((Iterator) it);
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return this.forwardOrder.min((Iterable) iterable);
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ReverseOrdering)) {
            return false;
        }
        return this.forwardOrder.equals(((ReverseOrdering) obj).forwardOrder);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.forwardOrder);
        stringBuilder.append(".reverse()");
        return stringBuilder.toString();
    }
}
