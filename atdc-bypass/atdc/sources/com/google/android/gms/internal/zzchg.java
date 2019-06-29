package com.google.android.gms.internal;

final class zzchg implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;

    zzchg(zzcgq zzcgq, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zze(this.zzbte);
    }
}
