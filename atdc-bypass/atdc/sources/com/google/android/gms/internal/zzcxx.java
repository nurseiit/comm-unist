package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class zzcxx extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        boolean z = dpVarArr.length > 0 && dpVarArr.length <= 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        dp dpVar = dpVarArr.length < 2 ? dv.zzbLu : dpVarArr[1];
        List zzDs = dwVar.zzDs();
        int size = zzDs.size();
        int i = size - 1;
        if (dpVarArr.length == 3) {
            int zzc = (int) zzcxp.zzc(dpVarArr[2]);
            i = zzc < 0 ? size - Math.abs(zzc) : Math.min(zzc, i);
        }
        while (i >= 0) {
            if (dwVar.zzbH(i) && zzcxp.zzd(dpVar, (dp) zzDs.get(i))) {
                break;
            }
            i--;
        }
        i = -1;
        return new dt(Double.valueOf((double) i));
    }
}
