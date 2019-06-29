package com.google.android.gms.ads.internal.overlay;

final class zze implements Runnable {
    private /* synthetic */ zzd zzOA;

    zze(zzd zzd) {
        this.zzOA = zzd;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzfT();
        }
    }
}
