package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public abstract class zzcxq implements zzcxo {
    public abstract dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr);

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(zzcwa != null);
        zzbo.zzaf(dpVarArr != null);
        dp[] dpVarArr2 = new dp[dpVarArr.length];
        for (int i = 0; i < dpVarArr.length; i++) {
            zzbo.zzaf(dpVarArr[i] != null);
            zzbo.zzaf(dpVarArr[i] != dv.zzbLr);
            zzbo.zzaf(dpVarArr[i] != dv.zzbLs);
            dpVarArr2[i] = ed.zza(zzcwa, dpVarArr[i]);
            zzbo.zzaf(dpVarArr2[i] != null);
            zzbo.zzaf(dpVarArr2[i] != dv.zzbLr);
            zzbo.zzaf(dpVarArr2[i] != dv.zzbLs);
        }
        dp zza = zza(zzcwa, dpVarArr2);
        if (zza != null) {
            z = true;
        }
        zzbo.zzae(z);
        return zza;
    }
}
