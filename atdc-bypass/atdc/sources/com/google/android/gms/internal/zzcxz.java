package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class zzcxz extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length == 1);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        List zzDs = ((dw) dpVarArr[0]).zzDs();
        return !zzDs.isEmpty() ? (dp) zzDs.remove(zzDs.size() - 1) : dv.zzbLu;
    }
}
