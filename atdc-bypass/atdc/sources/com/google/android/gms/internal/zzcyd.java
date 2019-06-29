package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;

public final class zzcyd extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        boolean z = true;
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        Collections.reverse(((dw) dpVarArr[0]).zzDs());
        return dpVarArr[0];
    }
}
