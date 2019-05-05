package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public abstract class bs extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 2);
        try {
            double zzb = zzcxp.zzb(dpVarArr[0]);
            double zzb2 = zzcxp.zzb(dpVarArr[1]);
            return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new ds(Boolean.valueOf(false)) : new ds(Boolean.valueOf(zze(zzb, zzb2)));
        } catch (IllegalArgumentException unused) {
            return new ds(Boolean.valueOf(false));
        }
    }

    public abstract boolean zze(double d, double d2);
}
