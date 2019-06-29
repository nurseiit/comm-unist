package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class l extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = dpVarArr.length > 0 && dpVarArr.length <= 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        double zzc = dpVarArr.length < 2 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : zzcxp.zzc(dpVarArr[1]);
        double length = (double) value.length();
        if (dpVarArr.length == 3 && dpVarArr[2] != dv.zzbLu) {
            length = zzcxp.zzc(dpVarArr[2]);
        }
        int max = (int) (zzc < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? Math.max(((double) value.length()) + zzc, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) : Math.min(zzc, (double) value.length()));
        return new eb(value.substring(max, Math.max(0, ((int) (length < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? Math.max(((double) value.length()) + length, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) : Math.min(length, (double) value.length()))) - max) + max));
    }
}
