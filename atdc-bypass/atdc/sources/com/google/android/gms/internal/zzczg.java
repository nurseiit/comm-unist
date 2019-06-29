package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczg extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        for (dp zza : ((dw) dpVarArr[0]).zzDs()) {
            dp zza2 = ed.zza(zzcwa, zza2);
            if ((zza2 instanceof dv) && (zza2 == dv.zzbLr || zza2 == dv.zzbLs || ((dv) zza2).zzDr())) {
                return zza2;
            }
        }
        return dv.zzbLu;
    }
}
