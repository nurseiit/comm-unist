package com.google.android.gms.internal;

import java.util.Iterator;

final class zzcex implements Iterator<String> {
    private Iterator<String> zzbpK = this.zzbpL.zzbpJ.keySet().iterator();
    private /* synthetic */ zzcew zzbpL;

    zzcex(zzcew zzcew) {
        this.zzbpL = zzcew;
    }

    public final boolean hasNext() {
        return this.zzbpK.hasNext();
    }

    public final /* synthetic */ Object next() {
        return (String) this.zzbpK.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
