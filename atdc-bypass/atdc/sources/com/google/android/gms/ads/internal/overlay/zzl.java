package com.google.android.gms.ads.internal.overlay;

final class zzl implements Runnable {
    private /* synthetic */ zzd zzOA;

    zzl(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.onPaused();
        }
    }
}
