package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcya extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        int i = 1;
        zzbo.zzaf(dpVarArr.length > 0);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        int size = dwVar.zzDs().size();
        dwVar.setSize((dpVarArr.length + size) - 1);
        while (i < dpVarArr.length) {
            dwVar.zza(size, dpVarArr[i]);
            size++;
            i++;
        }
        return new dt(Double.valueOf((double) size));
    }
}
