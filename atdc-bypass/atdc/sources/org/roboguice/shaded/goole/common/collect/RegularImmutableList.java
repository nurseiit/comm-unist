package org.roboguice.shaded.goole.common.collect;

import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(emulated = true, serializable = true)
class RegularImmutableList<E> extends ImmutableList<E> {
    private final transient Object[] array;
    private final transient int offset;
    private final transient int size;

    RegularImmutableList(Object[] objArr, int i, int i2) {
        this.offset = i;
        this.size = i2;
        this.array = objArr;
    }

    RegularImmutableList(Object[] objArr) {
        this(objArr, 0, objArr.length);
    }

    public int size() {
        return this.size;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return this.size != this.array.length;
    }

    /* Access modifiers changed, original: 0000 */
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, this.offset, objArr, i, this.size);
        return i + this.size;
    }

    public E get(int i) {
        Preconditions.checkElementIndex(i, this.size);
        return this.array[i + this.offset];
    }

    public int indexOf(@Nullable Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int i = 0; i < this.size; i++) {
            if (this.array[this.offset + i].equals(obj)) {
                return i;
            }
        }
        return -1;
    }

    public int lastIndexOf(@Nullable Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int i = this.size - 1; i >= 0; i--) {
            if (this.array[this.offset + i].equals(obj)) {
                return i;
            }
        }
        return -1;
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableList<E> subListUnchecked(int i, int i2) {
        return new RegularImmutableList(this.array, this.offset + i, i2 - i);
    }

    public UnmodifiableListIterator<E> listIterator(int i) {
        return Iterators.forArray(this.array, this.offset, this.size, i);
    }
}
