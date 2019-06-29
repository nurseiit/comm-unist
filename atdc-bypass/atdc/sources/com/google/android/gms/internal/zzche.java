package com.google.android.gms.internal;

final class zzche implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcji zzbtk;

    zzche(zzcgq zzcgq, zzcji zzcji, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbtk = zzcji;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzb(this.zzbtk, this.zzbte);
    }
}
