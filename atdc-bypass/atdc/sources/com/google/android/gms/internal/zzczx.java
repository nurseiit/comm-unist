package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczx implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length <= 0) {
            z = false;
        }
        zzbo.zzaf(z);
        for (Object obj : dpVarArr) {
            zzbo.zzu(obj);
            zzbo.zzaf(obj instanceof eb);
            zzcwa.zza(((eb) obj).value(), dv.zzbLu);
        }
        return dv.zzbLu;
    }
}
