package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczb implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(dpVarArr != null);
        zzbo.zzaf(dpVarArr.length == 3);
        dp zza = ed.zza(zzcwa, zzcxp.zza(ed.zza(zzcwa, dpVarArr[0])) ? dpVarArr[1] : dpVarArr[2]);
        if (!(zza instanceof dv) || zza == dv.zzbLu || zza == dv.zzbLt) {
            return zza;
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Ternary.");
    }
}
