package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzbo;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> zzaFu;
    protected int zzaFv = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.zzaFu = (DataBuffer) zzbo.zzu(dataBuffer);
    }

    public boolean hasNext() {
        return this.zzaFv < this.zzaFu.getCount() - 1;
    }

    public T next() {
        int i;
        if (hasNext()) {
            DataBuffer dataBuffer = this.zzaFu;
            i = this.zzaFv + 1;
            this.zzaFv = i;
            return dataBuffer.get(i);
        }
        i = this.zzaFv;
        StringBuilder stringBuilder = new StringBuilder(46);
        stringBuilder.append("Cannot advance the iterator beyond ");
        stringBuilder.append(i);
        throw new NoSuchElementException(stringBuilder.toString());
    }

    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
