package com.google.android.gms.internal;

final class zzadn implements Runnable {
    private /* synthetic */ zzut zzWF;
    private /* synthetic */ zzadm zzWG;
    private /* synthetic */ zzir zztY;

    zzadn(zzadm zzadm, zzir zzir, zzut zzut) {
        this.zzWG = zzadm;
        this.zztY = zzir;
        this.zzWF = zzut;
    }

    public final void run() {
        this.zzWG.zza(this.zztY, this.zzWF);
    }
}
