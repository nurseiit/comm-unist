package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import java.util.Iterator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(serializable = true)
final class ReverseNaturalOrdering extends Ordering<Comparable> implements Serializable {
    static final ReverseNaturalOrdering INSTANCE = new ReverseNaturalOrdering();
    private static final long serialVersionUID = 0;

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public <S extends Comparable> Ordering<S> reverse() {
        return Ordering.natural();
    }

    public <E extends Comparable> E min(E e, E e2) {
        return (Comparable) NaturalOrdering.INSTANCE.max(e, e2);
    }

    public <E extends Comparable> E min(E e, E e2, E e3, E... eArr) {
        return (Comparable) NaturalOrdering.INSTANCE.max(e, e2, e3, eArr);
    }

    public <E extends Comparable> E min(Iterator<E> it) {
        return (Comparable) NaturalOrdering.INSTANCE.max((Iterator) it);
    }

    public <E extends Comparable> E min(Iterable<E> iterable) {
        return (Comparable) NaturalOrdering.INSTANCE.max((Iterable) iterable);
    }

    public <E extends Comparable> E max(E e, E e2) {
        return (Comparable) NaturalOrdering.INSTANCE.min(e, e2);
    }

    public <E extends Comparable> E max(E e, E e2, E e3, E... eArr) {
        return (Comparable) NaturalOrdering.INSTANCE.min(e, e2, e3, eArr);
    }

    public <E extends Comparable> E max(Iterator<E> it) {
        return (Comparable) NaturalOrdering.INSTANCE.min((Iterator) it);
    }

    public <E extends Comparable> E max(Iterable<E> iterable) {
        return (Comparable) NaturalOrdering.INSTANCE.min((Iterable) iterable);
    }

    private Object readResolve() {
        return INSTANCE;
    }

    private ReverseNaturalOrdering() {
    }
}
