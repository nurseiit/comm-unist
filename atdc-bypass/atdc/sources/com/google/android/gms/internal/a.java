package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class a extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        dp<?>[] dpVarArr2 = dpVarArr;
        int i = 1;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr2.length == 2);
        double zzb = zzcxp.zzb(dpVarArr2[0]);
        double zzb2 = zzcxp.zzb(dpVarArr2[1]);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return new dt(Double.valueOf(Double.NaN));
        }
        if (Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
            return new dt(Double.valueOf(Double.NaN));
        }
        int i2 = ((double) Double.compare(zzb, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : 0;
        if (((double) Double.compare(zzb2, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            i = 0;
        }
        i2 ^= i;
        double d = Double.NEGATIVE_INFINITY;
        if (!Double.isInfinite(zzb) || Double.isInfinite(zzb2)) {
            double d2 = -0.0d;
            if (!Double.isInfinite(zzb) && Double.isInfinite(zzb2)) {
                if (i2 == 0) {
                    d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
                return new dt(Double.valueOf(d2));
            } else if (zzb == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                if (zzb2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    return new dt(Double.valueOf(Double.NaN));
                }
                if (i2 == 0) {
                    d2 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
                return new dt(Double.valueOf(d2));
            } else if (Double.isInfinite(zzb) || zzb == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || zzb2 != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                return new dt(Double.valueOf(zzb / zzb2));
            } else {
                if (i2 == 0) {
                    d = Double.POSITIVE_INFINITY;
                }
                return new dt(Double.valueOf(d));
            }
        }
        if (i2 == 0) {
            d = Double.POSITIVE_INFINITY;
        }
        return new dt(Double.valueOf(d));
    }
}
