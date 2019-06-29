package org.roboguice.shaded.goole.common.collect;

import java.io.Serializable;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
final class Count implements Serializable {
    private int value;

    Count(int i) {
        this.value = i;
    }

    public int get() {
        return this.value;
    }

    public int getAndAdd(int i) {
        int i2 = this.value;
        this.value = i + i2;
        return i2;
    }

    public int addAndGet(int i) {
        int i2 = this.value + i;
        this.value = i2;
        return i2;
    }

    public void set(int i) {
        this.value = i;
    }

    public int getAndSet(int i) {
        int i2 = this.value;
        this.value = i;
        return i2;
    }

    public int hashCode() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Count) && ((Count) obj).value == this.value;
    }

    public String toString() {
        return Integer.toString(this.value);
    }
}
