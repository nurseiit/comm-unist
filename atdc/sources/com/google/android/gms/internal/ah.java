package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class ah implements zzcxo {
    private final Context mContext;

    public ah(Context context) {
        this.mContext = context;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return new eb(this.mContext.getPackageName());
    }
}
