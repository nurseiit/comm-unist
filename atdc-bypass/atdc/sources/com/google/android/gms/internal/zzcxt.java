package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.List;

public final class zzcxt extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length == 2);
        zzbo.zzaf(dpVarArr[0] instanceof dw);
        zzbo.zzaf(dpVarArr[1] instanceof du);
        dw dwVar = (dw) dpVarArr[0];
        du duVar = (du) dpVarArr[1];
        List zzDs = dwVar.zzDs();
        int size = zzDs.size();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < size && i < dwVar.zzDs().size()) {
            if (dwVar.zzbH(i)) {
                if (zzcxp.zza(duVar.zzDp().zzb(zzcwa, (dp) zzDs.get(i), new dt(Double.valueOf((double) i)), dwVar))) {
                    arrayList.add((dp) zzDs.get(i));
                }
            }
            i++;
        }
        return new dw(arrayList);
    }
}
