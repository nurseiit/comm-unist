package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class zzmn implements Callable<T> {
    private /* synthetic */ zzme zzBU;
    private /* synthetic */ zzmm zzBV;

    zzmn(zzmm zzmm, zzme zzme) {
        this.zzBV = zzmm;
        this.zzBU = zzme;
    }

    public final T call() {
        return this.zzBU.zza(this.zzBV.zzBT);
    }
}
