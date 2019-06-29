package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class g extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = dpVarArr.length == 2 || dpVarArr.length == 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        return new dt(Double.valueOf((double) value.indexOf(zzcxp.zzd(dpVarArr[1]), (int) Math.min(Math.max(dpVarArr.length < 3 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : zzcxp.zzc(dpVarArr[2]), FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE), (double) value.length()))));
    }
}
