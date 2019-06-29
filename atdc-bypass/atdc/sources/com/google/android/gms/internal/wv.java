package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map.Entry;

final class wv implements Iterator<xl> {
    private final Iterator<Entry<wp, xm>> zzbZW;

    public wv(Iterator<Entry<wp, xm>> it) {
        this.zzbZW = it;
    }

    public final boolean hasNext() {
        return this.zzbZW.hasNext();
    }

    public final /* synthetic */ Object next() {
        Entry entry = (Entry) this.zzbZW.next();
        return new xl((wp) entry.getKey(), (xm) entry.getValue());
    }

    public final void remove() {
        this.zzbZW.remove();
    }
}
