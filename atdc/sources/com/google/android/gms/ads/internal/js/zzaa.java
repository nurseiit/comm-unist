package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzajs;

final class zzaa implements zzajs<zzai> {
    private /* synthetic */ zzy zzLt;

    zzaa(zzy zzy) {
        this.zzLt = zzy;
    }

    public final /* synthetic */ void zzc(Object obj) {
        zzafr.v("Releasing engine reference.");
        this.zzLt.zzLr.zzfb();
    }
}
