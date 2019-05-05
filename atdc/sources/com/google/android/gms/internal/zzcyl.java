package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public final class zzcyl extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        int i = 3;
        zzbo.zzaf(dpVarArr.length >= 3);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        dw dwVar = (dw) dpVarArr[0];
        int zzc = (int) zzcxp.zzc(dpVarArr[1]);
        zzc = zzc < 0 ? Math.max(dwVar.zzDs().size() + zzc, 0) : Math.min(zzc, dwVar.zzDs().size());
        int min = Math.min(Math.max((int) zzcxp.zzc(dpVarArr[2]), 0), dwVar.zzDs().size() - zzc) + zzc;
        ArrayList arrayList = new ArrayList(dwVar.zzDs().subList(zzc, min));
        dwVar.zzDs().subList(zzc, min).clear();
        ArrayList arrayList2 = new ArrayList();
        while (i < dpVarArr.length) {
            arrayList2.add(dpVarArr[i]);
            i++;
        }
        dwVar.zzDs().addAll(zzc, arrayList2);
        return new dw(arrayList);
    }
}
