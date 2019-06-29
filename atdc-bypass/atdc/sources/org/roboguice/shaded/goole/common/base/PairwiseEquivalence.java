package org.roboguice.shaded.goole.common.base;

import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(serializable = true)
final class PairwiseEquivalence<T> extends Equivalence<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    final Equivalence<? super T> elementEquivalence;

    PairwiseEquivalence(Equivalence<? super T> equivalence) {
        this.elementEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    /* Access modifiers changed, original: protected */
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        do {
            boolean z = false;
            if (!it.hasNext() || !it2.hasNext()) {
                if (!(it.hasNext() || it2.hasNext())) {
                    z = true;
                }
                return z;
            }
        } while (this.elementEquivalence.equivalent(it.next(), it2.next()));
        return false;
    }

    /* Access modifiers changed, original: protected */
    public int doHash(Iterable<T> iterable) {
        int i = 78721;
        for (T hash : iterable) {
            i = (i * 24943) + this.elementEquivalence.hash(hash);
        }
        return i;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof PairwiseEquivalence)) {
            return false;
        }
        return this.elementEquivalence.equals(((PairwiseEquivalence) obj).elementEquivalence);
    }

    public int hashCode() {
        return this.elementEquivalence.hashCode() ^ 1185147655;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.elementEquivalence);
        stringBuilder.append(".pairwise()");
        return stringBuilder.toString();
    }
}
