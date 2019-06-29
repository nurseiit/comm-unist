package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcyb extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        dp<?> dpVar;
        int i;
        zzbo.zzu(dpVarArr);
        boolean z = dpVarArr.length == 2 || dpVarArr.length == 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        zzbo.zzaf(dpVarArr[1] instanceof du);
        dw dwVar = (dw) dpVarArr[0];
        du duVar = (du) dpVarArr[1];
        int size = dwVar.zzDs().size();
        if (dpVarArr.length == 3) {
            dpVar = dpVarArr[2];
            i = 0;
        } else {
            zzbo.zzae(size > 0);
            dpVar = dwVar.zzbG(0);
            int i2 = 0;
            while (i2 < size) {
                if (dwVar.zzbH(i2)) {
                    dpVar = dwVar.zzbG(i2);
                    i = i2 + 1;
                    break;
                }
                i2++;
            }
            i = 1;
            zzbo.zzae(i2 < size);
        }
        while (i < size && i < dwVar.zzDs().size()) {
            if (dwVar.zzbH(i)) {
                dpVar = duVar.zzDp().zzb(zzcwa, dpVar, (dp) r6.get(i), new dt(Double.valueOf((double) i)), dwVar);
            }
            i++;
        }
        return dpVar;
    }
}
