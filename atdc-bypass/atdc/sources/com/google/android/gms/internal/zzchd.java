package com.google.android.gms.internal;

final class zzchd implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcji zzbtk;

    zzchd(zzcgq zzcgq, zzcji zzcji, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbtk = zzcji;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzc(this.zzbtk, this.zzbte);
    }
}
