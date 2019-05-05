package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzbd extends zzdh {
    private final Object mLock = new Object();
    private zzah zzbSr;
    private zzbe zzbSv;

    public final void zza(zzbe zzbe) {
        zzah zzah;
        synchronized (this.mLock) {
            this.zzbSv = (zzbe) zzbo.zzu(zzbe);
            zzah = this.zzbSr;
        }
        if (zzah != null) {
            zzbe.zzb(zzah);
        }
    }

    public final void zzm(int i, int i2) {
        zzbe zzbe;
        zzah zzah;
        synchronized (this.mLock) {
            zzbe = this.zzbSv;
            zzah = new zzah(i, i2);
            this.zzbSr = zzah;
        }
        if (zzbe != null) {
            zzbe.zzb(zzah);
        }
    }
}
