package com.google.android.gms.internal;

import java.util.Iterator;

final class nz implements Iterator<oa> {
    private int zzcaj = (this.zzcak.length - 1);
    private /* synthetic */ ny zzcak;

    nz(ny nyVar) {
        this.zzcak = nyVar;
    }

    public final boolean hasNext() {
        return this.zzcaj >= 0;
    }

    public final /* synthetic */ Object next() {
        long zzb = this.zzcak.value & ((long) (1 << this.zzcaj));
        oa oaVar = new oa();
        oaVar.zzcal = zzb == 0;
        oaVar.zzcam = (int) Math.pow(2.0d, (double) this.zzcaj);
        this.zzcaj--;
        return oaVar;
    }

    public final void remove() {
    }
}
