package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzagz;

final class zzay implements Runnable {
    final /* synthetic */ Runnable zzuL;
    final /* synthetic */ zzax zzuM;

    zzay(zzax zzax, Runnable runnable) {
        this.zzuM = zzax;
        this.zzuL = runnable;
    }

    public final void run() {
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzaz(this));
    }
}
