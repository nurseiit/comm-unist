package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class dx implements Iterator<dp<?>> {
    private int zzbLy = 0;
    private /* synthetic */ dw zzbLz;

    dx(dw dwVar) {
        this.zzbLz = dwVar;
    }

    public final boolean hasNext() {
        for (int i = this.zzbLy; i < this.zzbLz.zzbLx.size(); i++) {
            if (this.zzbLz.zzbLx.get(i) != null) {
                return true;
            }
        }
        return false;
    }

    public final /* synthetic */ Object next() {
        if (this.zzbLy >= this.zzbLz.zzbLx.size()) {
            throw new NoSuchElementException();
        }
        for (int i = this.zzbLy; i < this.zzbLz.zzbLx.size(); i++) {
            if (this.zzbLz.zzbLx.get(i) != null) {
                this.zzbLy = i;
                int i2 = this.zzbLy;
                this.zzbLy = i2 + 1;
                return new dt(Double.valueOf((double) i2));
            }
        }
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
