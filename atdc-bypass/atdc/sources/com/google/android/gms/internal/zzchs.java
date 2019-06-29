package com.google.android.gms.internal;

final class zzchs implements Runnable {
    private /* synthetic */ zzchl zzbtt;
    private /* synthetic */ long zzbtx;

    zzchs(zzchl zzchl, long j) {
        this.zzbtt = zzchl;
        this.zzbtx = j;
    }

    public final void run() {
        this.zzbtt.zzwG().zzbry.set(this.zzbtx);
        this.zzbtt.zzwF().zzyC().zzj("Session timeout duration set", Long.valueOf(this.zzbtx));
    }
}
