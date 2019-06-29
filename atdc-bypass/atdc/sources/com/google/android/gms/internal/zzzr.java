package com.google.android.gms.internal;

final class zzzr implements Runnable {
    private /* synthetic */ zzzq zzSq;

    zzzr(zzzq zzzq) {
        this.zzSq = zzzq;
    }

    public final void run() {
        synchronized (this.zzSq.zzQT) {
            if (this.zzSq.zzSp == null) {
                return;
            }
            this.zzSq.onStop();
            this.zzSq.zzd(2, "Timed out waiting for ad response.");
        }
    }
}
