package org.roboguice.shaded.goole.common.cache;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
final class LongAdder extends Striped64 implements Serializable, LongAddable {
    private static final long serialVersionUID = 7249069246863182397L;

    /* Access modifiers changed, original: final */
    public final long fn(long j, long j2) {
        return j + j2;
    }

    public void add(long j) {
        Cell[] cellArr = this.cells;
        if (cellArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        HashCode hashCode = (HashCode) threadHashCode.get();
        int i = hashCode.code;
        boolean z = true;
        if (cellArr != null) {
            int length = cellArr.length;
            if (length >= 1) {
                Cell cell = cellArr[i & (length - 1)];
                if (cell != null) {
                    long j3 = cell.value;
                    z = cell.cas(j3, j3 + j);
                    if (z) {
                        return;
                    }
                }
            }
        }
        retryUpdate(j, hashCode, z);
    }

    public void increment() {
        add(1);
    }

    public void decrement() {
        add(-1);
    }

    public long sum() {
        long j = this.base;
        Cell[] cellArr = this.cells;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    j += cell.value;
                }
            }
        }
        return j;
    }

    public void reset() {
        internalReset(0);
    }

    public long sumThenReset() {
        long j = this.base;
        Cell[] cellArr = this.cells;
        this.base = 0;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    long j2 = j + cell.value;
                    cell.value = 0;
                    j = j2;
                }
            }
        }
        return j;
    }

    public String toString() {
        return Long.toString(sum());
    }

    public long longValue() {
        return sum();
    }

    public int intValue() {
        return (int) sum();
    }

    public float floatValue() {
        return (float) sum();
    }

    public double doubleValue() {
        return (double) sum();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }
}
