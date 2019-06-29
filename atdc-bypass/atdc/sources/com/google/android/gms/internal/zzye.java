package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzar;
import java.util.concurrent.CountDownLatch;

final class zzye implements Runnable {
    private /* synthetic */ zzyd zzRf;
    private /* synthetic */ CountDownLatch zzsT;

    zzye(zzyd zzyd, CountDownLatch countDownLatch) {
        this.zzRf = zzyd;
        this.zzsT = countDownLatch;
    }

    public final void run() {
        synchronized (this.zzRf.zzQT) {
            this.zzRf.zzRe = zzar.zza(this.zzRf.zzJH, this.zzRf.zzRd, this.zzsT);
        }
    }
}
