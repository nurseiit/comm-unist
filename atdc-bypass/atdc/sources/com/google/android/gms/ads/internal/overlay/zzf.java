package com.google.android.gms.ads.internal.overlay;

final class zzf implements Runnable {
    private /* synthetic */ zzd zzOA;

    zzf(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzfV();
        }
    }
}
