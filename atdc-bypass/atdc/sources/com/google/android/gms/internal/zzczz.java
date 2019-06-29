package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczz extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 2);
        dp dpVar = dpVarArr[0];
        dp dpVar2 = dpVarArr[1];
        if ((!(dpVar instanceof dv) || dpVar == dv.zzbLu || dpVar == dv.zzbLt) && (!(dpVar2 instanceof dv) || dpVar2 == dv.zzbLu || dpVar2 == dv.zzbLt)) {
            dp ebVar = ((dpVar instanceof dz) || (dpVar instanceof dw) || (dpVar instanceof du)) ? new eb(zzcxp.zzd(dpVar)) : dpVar;
            if ((dpVar2 instanceof dz) || (dpVar2 instanceof dw) || (dpVar2 instanceof du)) {
                dpVar2 = new eb(zzcxp.zzd(dpVar2));
            }
            if (!(ebVar instanceof eb) && !(dpVar2 instanceof eb)) {
                return new dt(Double.valueOf(zzcxp.zza(ebVar, dpVar2)));
            }
            String valueOf = String.valueOf(zzcxp.zzd(ebVar));
            String valueOf2 = String.valueOf(zzcxp.zzd(dpVar2));
            return new eb(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
        throw new IllegalArgumentException("Illegal InternalType passed to Add.");
    }
}
