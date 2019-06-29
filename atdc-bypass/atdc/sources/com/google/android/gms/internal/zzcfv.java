package com.google.android.gms.internal;

final class zzcfv implements Runnable {
    private /* synthetic */ boolean zzbrg;
    private /* synthetic */ zzcfu zzbrh;

    zzcfv(zzcfu zzcfu, boolean z) {
        this.zzbrh = zzcfu;
        this.zzbrg = z;
    }

    public final void run() {
        this.zzbrh.zzboe.zzam(this.zzbrg);
    }
}
