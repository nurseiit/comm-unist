package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcyv extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        return new dt(Double.valueOf(zzcxp.zzb(dpVarArr[0]) * -1.0d));
    }
}
