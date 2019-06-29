package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public final class zzczs implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(dpVarArr != null);
        ArrayList arrayList = new ArrayList(dpVarArr.length);
        for (Object add : dpVarArr) {
            arrayList.add(add);
        }
        return new dw(arrayList);
    }
}
