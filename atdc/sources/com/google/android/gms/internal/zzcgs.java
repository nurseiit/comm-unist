package com.google.android.gms.internal;

final class zzcgs implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcek zzbtg;

    zzcgs(zzcgq zzcgq, zzcek zzcek, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbtg = zzcek;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzc(this.zzbtg, this.zzbte);
    }
}
