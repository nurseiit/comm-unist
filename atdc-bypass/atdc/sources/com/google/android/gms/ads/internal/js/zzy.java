package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzajr;
import com.google.android.gms.internal.zzajt;

public final class zzy extends zzajt<zzai> {
    private final Object mLock = new Object();
    private final zzac zzLr;
    private boolean zzLs;

    public zzy(zzac zzac) {
        this.zzLr = zzac;
    }

    public final void release() {
        synchronized (this.mLock) {
            if (this.zzLs) {
                return;
            }
            this.zzLs = true;
            zza(new zzz(this), new zzajr());
            zza(new zzaa(this), new zzab(this));
        }
    }
}
