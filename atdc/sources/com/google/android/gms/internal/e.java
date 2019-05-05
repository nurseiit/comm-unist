package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class e extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        int i = 0;
        boolean z = dpVarArr.length == 1 || dpVarArr.length == 2;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        if (dpVarArr.length == 2) {
            i = (int) zzcxp.zzc(dpVarArr[1]);
        }
        return (i < 0 || i >= value.length()) ? new eb("") : new eb(String.valueOf(value.charAt(i)));
    }
}
