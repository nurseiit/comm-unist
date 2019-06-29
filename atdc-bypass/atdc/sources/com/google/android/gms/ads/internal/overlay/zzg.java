package com.google.android.gms.ads.internal.overlay;

final class zzg implements Runnable {
    private /* synthetic */ zzd zzOA;
    private /* synthetic */ String zzOB;
    private /* synthetic */ String zzOC;

    zzg(zzd zzd, String str, String str2) {
        this.zzOA = zzd;
        this.zzOB = str;
        this.zzOC = str2;
    }

    public final void run() {
        if (this.zzOA.zzOz != null) {
            this.zzOA.zzOz.zzj(this.zzOB, this.zzOC);
        }
    }
}
