package com.google.android.gms.internal;

final class zzcha implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcez zzbtj;

    zzcha(zzcgq zzcgq, zzcez zzcez, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbtj = zzcez;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzb(this.zzbtj, this.zzbte);
    }
}
