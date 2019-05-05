package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public final class zzh<T> extends zzb<T> {
    private T zzaFQ;

    public zzh(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    public final T next() {
        StringBuilder stringBuilder;
        if (hasNext()) {
            this.zzaFv++;
            if (this.zzaFv == 0) {
                this.zzaFQ = this.zzaFu.get(0);
                if (!(this.zzaFQ instanceof zzc)) {
                    String valueOf = String.valueOf(this.zzaFQ.getClass());
                    stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 44);
                    stringBuilder.append("DataBuffer reference of type ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append(" is not movable");
                    throw new IllegalStateException(stringBuilder.toString());
                }
            }
            ((zzc) this.zzaFQ).zzar(this.zzaFv);
            return this.zzaFQ;
        }
        int i = this.zzaFv;
        stringBuilder = new StringBuilder(46);
        stringBuilder.append("Cannot advance the iterator beyond ");
        stringBuilder.append(i);
        throw new NoSuchElementException(stringBuilder.toString());
    }
}
