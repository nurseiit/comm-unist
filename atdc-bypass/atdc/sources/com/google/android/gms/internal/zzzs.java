package com.google.android.gms.internal;

final class zzzs implements Runnable {
    private /* synthetic */ zzzq zzSq;
    private /* synthetic */ zzajp zzSr;

    zzzs(zzzq zzzq, zzajp zzajp) {
        this.zzSq = zzzq;
        this.zzSr = zzajp;
    }

    public final void run() {
        synchronized (this.zzSq.zzQT) {
            this.zzSq.zzSp = this.zzSq.zza(this.zzSq.zzSn.zzvT, this.zzSr);
            if (this.zzSq.zzSp == null) {
                this.zzSq.zzd(0, "Could not start the ad request service.");
                zzagz.zzZr.removeCallbacks(this.zzSq.zzQS);
            }
        }
    }
}
