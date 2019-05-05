package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.HashMap;

public final class zzczj extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < dpVarArr.length - 1) {
            String zzd = zzcxp.zzd(dpVarArr[i]);
            dv dvVar = dpVarArr[i + 1];
            if (!(dvVar instanceof dv) || dvVar == dv.zzbLt || dvVar == dv.zzbLu) {
                hashMap.put(zzd, dvVar);
                i += 2;
            } else {
                throw new IllegalStateException("Illegal InternalType found in CreateObject.");
            }
        }
        return new dz(hashMap);
    }
}
