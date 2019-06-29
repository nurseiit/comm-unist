package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzajq;

final class zzv implements zzajq {
    private /* synthetic */ zzl zzLh;
    private /* synthetic */ zzac zzLo;

    zzv(zzl zzl, zzac zzac) {
        this.zzLh = zzl;
        this.zzLo = zzac;
    }

    public final void run() {
        synchronized (this.zzLh.mLock) {
            this.zzLh.zzLe = 1;
            zzafr.v("Failed loading new engine. Marking new engine destroyable.");
            this.zzLo.zzfc();
        }
    }
}
