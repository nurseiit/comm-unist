package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class af implements zzcxo {
    private final zzcua zzbJY;

    public af(Context context) {
        this(zzcua.zzbu(context));
    }

    private af(zzcua zzcua) {
        this.zzbJY = zzcua;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return new ds(Boolean.valueOf(this.zzbJY.isLimitAdTrackingEnabled() ^ 1));
    }
}
