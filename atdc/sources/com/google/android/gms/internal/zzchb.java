package com.google.android.gms.internal;

final class zzchb implements Runnable {
    private /* synthetic */ String zzbjh;
    private /* synthetic */ zzcgq zzbtf;
    private /* synthetic */ zzcez zzbtj;

    zzchb(zzcgq zzcgq, zzcez zzcez, String str) {
        this.zzbtf = zzcgq;
        this.zzbtj = zzcez;
        this.zzbjh = str;
    }

    public final void run() {
        this.zzbtf.zzboe.zzze();
        this.zzbtf.zzboe.zzb(this.zzbtj, this.zzbjh);
    }
}
