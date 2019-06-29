package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczm implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        dp zzfK = zzcwa.zzfK(((eb) dpVarArr[0]).value());
        if (zzfK instanceof ea) {
            throw new IllegalStateException("Illegal Statement type encountered in Get.");
        } else if (!(zzfK instanceof dv) || zzfK == dv.zzbLu || zzfK == dv.zzbLt) {
            return zzfK;
        } else {
            throw new IllegalStateException("Illegal InternalType encountered in Get.");
        }
    }
}
