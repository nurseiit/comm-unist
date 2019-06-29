package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public final class zzcym extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length > 0);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < dpVarArr.length; i++) {
            arrayList.add(dpVarArr[i]);
        }
        dwVar.zzDs().addAll(0, arrayList);
        return new dt(Double.valueOf((double) dwVar.zzDs().size()));
    }
}
