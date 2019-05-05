package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class bg extends zzcxq {
    private static final dt zzbKg = new dt(Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
    private static final dt zzbKh = new dt(Double.valueOf(2.147483647E9d));

    private static boolean zzg(dp<?> dpVar) {
        return (dpVar instanceof dt) && !Double.isNaN(((dt) dpVar).zzDo().doubleValue());
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        double doubleValue;
        double doubleValue2;
        zzbo.zzaf(true);
        dp dpVar = dpVarArr.length > 0 ? dpVarArr[0] : zzbKg;
        dp dpVar2 = dpVarArr.length > 1 ? dpVarArr[1] : zzbKh;
        if (zzg(dpVar) && zzg(dpVar2) && zzcxp.zzb(dpVar, dpVar2)) {
            doubleValue = ((dt) dpVar).zzDo().doubleValue();
            doubleValue2 = ((dt) dpVar2).zzDo().doubleValue();
        } else {
            doubleValue = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            doubleValue2 = 2.147483647E9d;
        }
        return new dt(Double.valueOf((double) Math.round((Math.random() * (doubleValue2 - doubleValue)) + doubleValue)));
    }
}
