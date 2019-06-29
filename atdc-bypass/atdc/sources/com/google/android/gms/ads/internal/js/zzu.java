package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzajs;

final class zzu implements zzajs<zza> {
    private /* synthetic */ zzl zzLh;
    private /* synthetic */ zzac zzLo;

    zzu(zzl zzl, zzac zzac) {
        this.zzLh = zzl;
        this.zzLo = zzac;
    }

    public final /* synthetic */ void zzc(Object obj) {
        synchronized (this.zzLh.mLock) {
            this.zzLh.zzLe = 0;
            if (!(this.zzLh.zzLd == null || this.zzLo == this.zzLh.zzLd)) {
                zzafr.v("New JS engine is loaded, marking previous one as destroyable.");
                this.zzLh.zzLd.zzfc();
            }
            this.zzLh.zzLd = this.zzLo;
        }
    }
}
