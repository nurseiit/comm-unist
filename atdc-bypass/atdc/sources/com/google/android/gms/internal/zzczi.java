package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public final class zzczi extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        ArrayList arrayList = new ArrayList();
        for (dv dvVar : dpVarArr) {
            boolean z = !(dvVar instanceof dv) || dvVar == dv.zzbLu || dvVar == dv.zzbLt;
            zzbo.zzaf(z);
            arrayList.add(dvVar);
        }
        return new dw(arrayList);
    }
}
