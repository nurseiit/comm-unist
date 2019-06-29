package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class b extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 2);
        double zzb = zzcxp.zzb(dpVarArr[0]);
        double zzb2 = zzcxp.zzb(dpVarArr[1]);
        return (Double.isNaN(zzb) || Double.isNaN(zzb2)) ? new dt(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || zzb2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) ? new dt(Double.valueOf(Double.NaN)) : (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? (zzb != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || zzb2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || Double.isInfinite(zzb2)) ? new dt(Double.valueOf(zzb % zzb2)) : new dt(Double.valueOf(zzb)) : new dt(Double.valueOf(zzb));
    }
}
