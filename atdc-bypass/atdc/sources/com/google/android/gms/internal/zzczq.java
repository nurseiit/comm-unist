package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.List;

public final class zzczq extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        dp<?> dpVar;
        dv zza;
        zzbo.zzaf(true);
        boolean z = dpVarArr.length == 2 || dpVarArr.length == 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[1] instanceof dw);
        if (dpVarArr.length == 3) {
            zzbo.zzaf(dpVarArr[2] instanceof dw);
        }
        List arrayList = new ArrayList();
        if (zzcxp.zza(dpVarArr[0])) {
            dpVar = dpVarArr[1];
        } else {
            if (dpVarArr.length > 2) {
                dpVar = dpVarArr[2];
            }
            zza = ed.zza(zzcwa, arrayList);
            return ((zza instanceof dv) || !ed.zzm(zza)) ? dv.zzbLu : zza;
        }
        arrayList = ((dw) dpVar).zzDs();
        zza = ed.zza(zzcwa, arrayList);
        if (zza instanceof dv) {
        }
    }
}
