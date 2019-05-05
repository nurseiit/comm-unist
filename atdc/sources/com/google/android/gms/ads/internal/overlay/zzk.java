package com.google.android.gms.ads.internal.overlay;

final class zzk implements Runnable {
    private /* synthetic */ zzd zzOA;

    zzk(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzfU();
        }
    }
}
