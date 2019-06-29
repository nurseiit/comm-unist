package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;

public final class ao implements zzcxo {
    private zze zzvw = zzi.zzrY();

    public final void zza(zze zze) {
        this.zzvw = (zze) zzbo.zzu(zze);
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return new dt(Double.valueOf((double) this.zzvw.currentTimeMillis()));
    }
}
