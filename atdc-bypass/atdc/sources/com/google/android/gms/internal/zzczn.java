package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczn implements zzcxo {
    private static zzcvu zzbHP;

    public zzczn(zzcvu zzcvu) {
        zzbHP = zzcvu;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        return zzbHP.zzfH(((eb) dpVarArr[0]).value());
    }
}
