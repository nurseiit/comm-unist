package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcxu extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length == 2);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        zzbo.zzaf(dpVarArr[1] instanceof du);
        dw dwVar = (dw) dpVarArr[0];
        du duVar = (du) dpVarArr[1];
        int size = dwVar.zzDs().size();
        int i = 0;
        while (i < size && i < dwVar.zzDs().size()) {
            if (dwVar.zzbH(i)) {
                duVar.zzDp().zzb(zzcwa, (dp) r4.get(i), new dt(Double.valueOf((double) i)), dwVar);
            }
            i++;
        }
        return dv.zzbLu;
    }
}
