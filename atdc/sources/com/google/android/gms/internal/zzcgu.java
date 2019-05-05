package com.google.android.gms.internal;

final class zzcgu implements Runnable {
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcek zzbtg;

    zzcgu(zzcgq zzcgq, zzcek zzcek) {
        this.zzbtf = zzcgq;
        this.zzbtg = zzcek;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zze(this.zzbtg);
    }
}
