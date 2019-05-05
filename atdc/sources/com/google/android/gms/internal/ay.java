package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class ay implements zzcxo {
    private Context mContext;

    public ay(Context context) {
        this.mContext = (Context) zzbo.zzu(context);
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(dpVarArr != null);
        String str = null;
        if (dpVarArr.length > 0 && dpVarArr[0] != dv.zzbLu) {
            str = zzcxp.zzd(ed.zza(zzcwa, dpVarArr[0]));
        }
        String zzL = zzcvj.zzL(this.mContext, str);
        return zzL != null ? new eb(zzL) : dv.zzbLu;
    }
}
