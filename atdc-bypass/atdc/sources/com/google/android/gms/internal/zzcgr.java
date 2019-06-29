package com.google.android.gms.internal;

final class zzcgr implements Runnable {
    private /* synthetic */ zzceh zzbte;
    private /* synthetic */ zzcgq zzbtf;

    zzcgr(zzcgq zzcgq, zzceh zzceh) {
        this.zzbtf = zzcgq;
        this.zzbte = zzceh;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzd(this.zzbte);
    }
}
