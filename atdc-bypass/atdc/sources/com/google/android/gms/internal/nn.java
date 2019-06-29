package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map.Entry;

final class nn<T> implements Iterator<T> {
    private Iterator<Entry<T, Void>> zzbZW;

    public nn(Iterator<Entry<T, Void>> it) {
        this.zzbZW = it;
    }

    public final boolean hasNext() {
        return this.zzbZW.hasNext();
    }

    public final T next() {
        return ((Entry) this.zzbZW.next()).getKey();
    }

    public final void remove() {
        this.zzbZW.remove();
    }
}
