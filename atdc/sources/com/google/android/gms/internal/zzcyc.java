package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcyc extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        dp<?> dpVar;
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
            size--;
        } else {
            zzbo.zzae(size > 0);
            int i = size - 1;
            dp<?> zzbG = dwVar.zzbG(i);
            size -= 2;
            while (i >= 0) {
                if (dwVar.zzbH(i)) {
                    int i2 = i - 1;
                    zzbG = dwVar.zzbG(i);
                    size = i2;
                    break;
                }
                i--;
            }
            zzbo.zzae(i >= 0);
            dpVar = zzbG;
        }
        while (size >= 0) {
            if (dwVar.zzbH(size)) {
                dpVar = duVar.zzDp().zzb(zzcwa, dpVar, (dp) r6.get(size), new dt(Double.valueOf((double) size)), dwVar);
            }
            size--;
        }
        return dpVar;
    }
}
