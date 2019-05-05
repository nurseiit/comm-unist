package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(serializable = true)
final class CompoundOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableList<Comparator<? super T>> comparators;

    CompoundOrdering(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.comparators = ImmutableList.of(comparator, comparator2);
    }

    CompoundOrdering(Iterable<? extends Comparator<? super T>> iterable) {
        this.comparators = ImmutableList.copyOf((Iterable) iterable);
    }

    public int compare(T t, T t2) {
        int size = this.comparators.size();
        for (int i = 0; i < size; i++) {
            int compare = ((Comparator) this.comparators.get(i)).compare(t, t2);
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CompoundOrdering)) {
            return false;
        }
        return this.comparators.equals(((CompoundOrdering) obj).comparators);
    }

    public int hashCode() {
        return this.comparators.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Ordering.compound(");
        stringBuilder.append(this.comparators);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
