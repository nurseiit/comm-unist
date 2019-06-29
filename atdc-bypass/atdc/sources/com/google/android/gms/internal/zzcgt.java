package com.google.android.gms.internal;

final class zzcgt implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcek zzbtg;

    zzcgt(zzcgq zzcgq, zzcek zzcek, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbtg = zzcek;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzb(this.zzbtg, this.zzbte);
    }
}
