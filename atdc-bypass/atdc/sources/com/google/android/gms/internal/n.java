package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class n extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = dpVarArr.length > 0 && dpVarArr.length <= 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        int zzc = (int) zzcxp.zzc(dpVarArr.length < 2 ? dv.zzbLu : dpVarArr[1]);
        int length = value.length();
        if (dpVarArr.length == 3 && dpVarArr[2] != dv.zzbLu) {
            length = (int) zzcxp.zzc(ed.zza(zzcwa, dpVarArr[2]));
        }
        int min = Math.min(Math.max(zzc, 0), value.length());
        int min2 = Math.min(Math.max(length, 0), value.length());
        return new eb(value.substring(Math.min(min, min2), Math.max(min, min2)));
    }
}
