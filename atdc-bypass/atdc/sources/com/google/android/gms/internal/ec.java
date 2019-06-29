package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ec implements Iterator<dp<?>> {
    private /* synthetic */ eb zzbLF;
    private int zzbLy = 0;

    ec(eb ebVar) {
        this.zzbLF = ebVar;
    }

    public final boolean hasNext() {
        return this.zzbLy < this.zzbLF.mValue.length();
    }

    public final /* synthetic */ Object next() {
        if (this.zzbLy >= this.zzbLF.mValue.length()) {
            throw new NoSuchElementException();
        }
        int i = this.zzbLy;
        this.zzbLy = i + 1;
        return new dt(Double.valueOf((double) i));
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
