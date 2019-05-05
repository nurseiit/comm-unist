package com.google.android.gms.ads.internal.overlay;

final class zzh implements Runnable {
    private /* synthetic */ zzd zzOA;

    zzh(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzfS();
        }
    }
}
