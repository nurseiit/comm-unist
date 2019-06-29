package com.google.android.gms.ads.internal.js;

final class zzag implements Runnable {
    private /* synthetic */ zza zzLy;
    private /* synthetic */ zzaf zzLz;

    zzag(zzaf zzaf, zza zza) {
        this.zzLz = zzaf;
        this.zzLy = zza;
    }

    public final void run() {
        this.zzLz.zzLx.zzLc.zzc(this.zzLy);
        this.zzLy.destroy();
    }
}
