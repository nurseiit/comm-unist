package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class zzcxv extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        int zzc;
        zzbo.zzu(dpVarArr);
        int i = 0;
        boolean z = dpVarArr.length > 0 && dpVarArr.length <= 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        dp dpVar = dpVarArr.length < 2 ? dv.zzbLu : dpVarArr[1];
        dp dpVar2 = dpVarArr.length < 3 ? dv.zzbLu : dpVarArr[2];
        List zzDs = dwVar.zzDs();
        int size = zzDs.size();
        if (dpVar2 != dv.zzbLu) {
            zzc = (int) zzcxp.zzc(dpVar2);
            i = zzc < 0 ? Math.max(size - Math.abs(zzc), 0) : zzc;
        }
        zzc = -1;
        while (i < size) {
            if (dwVar.zzbH(i) && zzcxp.zzd(dpVar, (dp) zzDs.get(i))) {
                zzc = i;
                break;
            }
            i++;
        }
        return new dt(Double.valueOf((double) zzc));
    }
}
