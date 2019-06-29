package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzafn {
    private final Object mLock;
    private int zzYS;
    private int zzYT;
    private final String zzYb;
    private final zzafk zzvt;

    private zzafn(zzafk zzafk, String str) {
        this.mLock = new Object();
        this.zzvt = zzafk;
        this.zzYb = str;
    }

    public zzafn(String str) {
        this(zzbs.zzbD(), str);
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzYS);
            bundle.putInt("pmnll", this.zzYT);
        }
        return bundle;
    }

    public final void zzg(int i, int i2) {
        synchronized (this.mLock) {
            this.zzYS = i;
            this.zzYT = i2;
            this.zzvt.zza(this.zzYb, this);
        }
    }
}
