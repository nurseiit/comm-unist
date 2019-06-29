package com.google.android.gms.internal;

import java.util.Iterator;

final class dq implements Iterator<dp<?>> {
    private /* synthetic */ Iterator zzbLm;

    dq(dp dpVar, Iterator it) {
        this.zzbLm = it;
    }

    public final boolean hasNext() {
        return this.zzbLm.hasNext();
    }

    public final /* synthetic */ Object next() {
        return new eb((String) this.zzbLm.next());
    }

    public final void remove() {
        this.zzbLm.remove();
    }
}
