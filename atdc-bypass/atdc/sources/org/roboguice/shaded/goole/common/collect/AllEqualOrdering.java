package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import java.util.List;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(serializable = true)
final class AllEqualOrdering extends Ordering<Object> implements Serializable {
    static final AllEqualOrdering INSTANCE = new AllEqualOrdering();
    private static final long serialVersionUID = 0;

    public int compare(@Nullable Object obj, @Nullable Object obj2) {
        return 0;
    }

    public <S> Ordering<S> reverse() {
        return this;
    }

    public String toString() {
        return "Ordering.allEqual()";
    }

    AllEqualOrdering() {
    }

    public <E> List<E> sortedCopy(Iterable<E> iterable) {
        return Lists.newArrayList((Iterable) iterable);
    }

    public <E> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        return ImmutableList.copyOf((Iterable) iterable);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
