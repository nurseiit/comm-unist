package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

public final class m extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        int i = 1;
        zzbo.zzaf(true);
        boolean z = dpVarArr.length == 1 || dpVarArr.length == 2;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        ArrayList arrayList = new ArrayList();
        if (dpVarArr.length == 1) {
            arrayList.add(dpVarArr[0]);
        } else {
            String value = ((eb) dpVarArr[0]).value();
            String zzd = zzcxp.zzd(dpVarArr[1]);
            boolean equals = zzd.equals("");
            String[] split = value.split(zzd, equals ? 0 : -1);
            if (!(equals && split.length > 0 && split[0].equals(""))) {
                i = 0;
            }
            while (i < split.length) {
                arrayList.add(new eb(split[i]));
                i++;
            }
        }
        return new dw(arrayList);
    }
}
