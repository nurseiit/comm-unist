package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;

public final class zzcyh extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        du duVar;
        zzbo.zzu(dpVarArr);
        boolean z = dpVarArr.length == 1 || dpVarArr.length == 2;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        if (dpVarArr.length == 2) {
            zzbo.zzaf(dpVarArr[1] instanceof du);
            duVar = (du) dpVarArr[1];
        } else {
            duVar = new du(new zzcyk());
        }
        Collections.sort(dwVar.zzDs(), new zzcyj(this, duVar, zzcwa));
        return dpVarArr[0];
    }
}
