package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class an implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return zzcwa.has("gtm.globals.eventName") ? zzcwa.zzfK("gtm.globals.eventName") : dv.zzbLt;
    }
}
