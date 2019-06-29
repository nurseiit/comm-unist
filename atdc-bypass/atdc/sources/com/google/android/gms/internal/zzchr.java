package com.google.android.gms.internal;

final class zzchr implements Runnable {
    private /* synthetic */ zzchl zzbtt;
    private /* synthetic */ long zzbtx;

    zzchr(zzchl zzchl, long j) {
        this.zzbtt = zzchl;
        this.zzbtx = j;
    }

    public final void run() {
        this.zzbtt.zzwG().zzbrx.set(this.zzbtx);
        this.zzbtt.zzwF().zzyC().zzj("Minimum session duration set", Long.valueOf(this.zzbtx));
    }
}
