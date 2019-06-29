package com.google.android.gms.internal;

import android.os.Build.VERSION;
import com.google.android.gms.common.internal.zzbo;

public final class bk implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return new dt(Double.valueOf((double) VERSION.SDK_INT));
    }
}
