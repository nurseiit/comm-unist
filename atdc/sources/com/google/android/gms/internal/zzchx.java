package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzchx implements Runnable {
    private /* synthetic */ zzchl zzbtt;
    private /* synthetic */ AtomicReference zzbtv;

    zzchx(zzchl zzchl, AtomicReference atomicReference) {
        this.zzbtt = zzchl;
        this.zzbtv = atomicReference;
    }

    public final void run() {
        this.zzbtt.zzww().zza(this.zzbtv);
    }
}
