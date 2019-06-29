package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzrd;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class zzau implements zzrd {
    private /* synthetic */ CountDownLatch zzsT;

    zzau(CountDownLatch countDownLatch) {
        this.zzsT = countDownLatch;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        this.zzsT.countDown();
        zzaka.getView().setVisibility(0);
    }
}
