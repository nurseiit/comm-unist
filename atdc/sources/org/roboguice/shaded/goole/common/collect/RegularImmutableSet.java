package org.roboguice.shaded.goole.common.collect;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;

@GwtCompatible(emulated = true, serializable = true)
final class RegularImmutableSet<E> extends ImmutableSet<E> {
    private final Object[] elements;
    private final transient int hashCode;
    private final transient int mask;
    @VisibleForTesting
    final transient Object[] table;

    /* Access modifiers changed, original: 0000 */
    public boolean isHashCodeFast() {
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return false;
    }

    RegularImmutableSet(Object[] objArr, int i, Object[] objArr2, int i2) {
        this.elements = objArr;
        this.table = objArr2;
        this.mask = i2;
        this.hashCode = i;
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int smear = Hashing.smear(obj.hashCode());
        while (true) {
            Object obj2 = this.table[this.mask & smear];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            smear++;
        }
    }

    public int size() {
        return this.elements.length;
    }

    public UnmodifiableIterator<E> iterator() {
        return Iterators.forArray(this.elements);
    }

    /* Access modifiers changed, original: 0000 */
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.elements, 0, objArr, i, this.elements.length);
        return i + this.elements.length;
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableList<E> createAsList() {
        return new RegularImmutableAsList((ImmutableCollection) this, this.elements);
    }

    public int hashCode() {
        return this.hashCode;
    }
}
