package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class c extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        int i = 1;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 2);
        double zzb = zzcxp.zzb(dpVarArr[0]);
        double zzb2 = zzcxp.zzb(dpVarArr[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new dt(Double.valueOf(Double.NaN));
        }
        if ((Double.isInfinite(zzb) && zzb2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) || (zzb == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && Double.isInfinite(zzb2))) {
            return new dt(Double.valueOf(Double.NaN));
        }
        if (!Double.isInfinite(zzb) && !Double.isInfinite(zzb2)) {
            return new dt(Double.valueOf(zzb * zzb2));
        }
        int i2 = ((double) Double.compare(zzb, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : 0;
        if (((double) Double.compare(zzb2, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            i = 0;
        }
        return new dt(Double.valueOf((i ^ i2) != 0 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY));
    }
}
