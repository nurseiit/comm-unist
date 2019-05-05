package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.HashMap;
import java.util.Map.Entry;

public final class z extends zzcxq {
    private final aa zzbJX;

    public z(aa aaVar) {
        this.zzbJX = aaVar;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzu(dpVarArr);
        zzbo.zzaf(dpVarArr.length > 0);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        HashMap hashMap = new HashMap();
        if (dpVarArr.length >= 2 && dpVarArr[1] != dv.zzbLu) {
            zzbo.zzaf(dpVarArr[1] instanceof dz);
            for (Entry entry : ((dz) dpVarArr[1]).zzDt().entrySet()) {
                zzbo.zzae(!(entry.getValue() instanceof ea));
                zzbo.zzae(ed.zzm((dp) entry.getValue()) ^ 1);
                hashMap.put((String) entry.getKey(), ((dp) entry.getValue()).zzDl());
            }
        }
        return ed.zzQ(this.zzbJX.zzd(value, hashMap));
    }
}
