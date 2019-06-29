package com.google.android.gms.ads.internal.overlay;

final class zzj implements Runnable {
    private /* synthetic */ zzd zzOA;

    zzj(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.onPaused();
            this.zzOA.zzOz.zzfW();
        }
    }
}
