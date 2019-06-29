package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class ae implements zzcxo {
    private final zzcua zzbJY;

    public ae(Context context) {
        this(zzcua.zzbu(context));
    }

    private ae(zzcua zzcua) {
        this.zzbJY = zzcua;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        String zzAy = this.zzbJY.zzAy();
        return zzAy == null ? dv.zzbLu : new eb(zzAy);
    }
}
