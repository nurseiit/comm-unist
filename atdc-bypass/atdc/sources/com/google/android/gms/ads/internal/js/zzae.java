package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzajq;

final class zzae implements zzajq {
    private /* synthetic */ zzy zzLw;

    zzae(zzac zzac, zzy zzy) {
        this.zzLw = zzy;
    }

    public final void run() {
        zzafr.v("Rejecting reference for JS Engine.");
        this.zzLw.reject();
    }
}
