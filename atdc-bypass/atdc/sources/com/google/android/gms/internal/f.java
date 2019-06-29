package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class f extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        int i = 1;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        StringBuilder stringBuilder = new StringBuilder(((eb) dpVarArr[0]).value());
        while (i < dpVarArr.length) {
            stringBuilder.append(zzcxp.zzd(dpVarArr[i]));
            i++;
        }
        return new eb(stringBuilder.toString());
    }
}
