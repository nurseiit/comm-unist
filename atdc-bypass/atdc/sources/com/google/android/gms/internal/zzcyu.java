package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzcyu extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = false;
        zzbo.zzaf(dpVarArr.length == 2);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr[1];
        if ((dpVar instanceof dz) || (dpVar instanceof dw) || (dpVar instanceof du)) {
            dpVar = new eb(zzcxp.zzd(dpVar));
        }
        if ((dpVar2 instanceof dz) || (dpVar2 instanceof dw) || (dpVar2 instanceof du)) {
            dpVar2 = new eb(zzcxp.zzd(dpVar2));
        }
        if ((((dpVar instanceof eb) && (dpVar2 instanceof eb)) || !(Double.isNaN(zzcxp.zzb(dpVar)) || Double.isNaN(zzcxp.zzb(dpVar2)))) && !zzcxp.zzb(dpVar2, dpVar)) {
            z = true;
        }
        return new ds(Boolean.valueOf(z));
    }
}
