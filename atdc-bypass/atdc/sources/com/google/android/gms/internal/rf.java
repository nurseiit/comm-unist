package com.google.android.gms.internal;

final class rf implements Runnable {
    private /* synthetic */ qu zzcdA;
    private /* synthetic */ rv zzcdK;

    rf(qu quVar, rv rvVar) {
        this.zzcdA = quVar;
        this.zzcdK = rvVar;
    }

    public final void run() {
        this.zzcdA.zze(new to(this.zzcdA, this.zzcdK.zzcea, vt.zzM(this.zzcdK.zzbZf)));
    }
}
