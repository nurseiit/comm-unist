package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class bc extends zzcxq {
    private final Context mContext;
    private final zzcvy zzbJZ;

    public bc(Context context, zzcvy zzcvy) {
        this.mContext = context;
        this.zzbJZ = zzcvy;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        Object obj = this.zzbJZ.zzCy().zzBh().get(zzcxp.zzd(dpVarArr[0]));
        if (obj == null && dpVarArr.length > 1) {
            obj = dpVarArr[1];
        }
        return ed.zzQ(obj);
    }
}
