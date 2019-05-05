package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzrd;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class zzav implements zzrd {
    private /* synthetic */ CountDownLatch zzsT;

    zzav(CountDownLatch countDownLatch) {
        this.zzsT = countDownLatch;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        zzajc.zzaT("Adapter returned an ad, but assets substitution failed");
        this.zzsT.countDown();
        zzaka.destroy();
    }
}
