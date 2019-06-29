package com.google.android.gms.ads.internal.overlay;

final class zzi implements Runnable {
    private /* synthetic */ zzd zzOA;
    private /* synthetic */ int zzOD;
    private /* synthetic */ int zzOE;

    zzi(zzd zzd, int i, int i2) {
        this.zzOA = zzd;
        this.zzOD = i;
        this.zzOE = i2;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzd(this.zzOD, this.zzOE);
        }
    }
}
