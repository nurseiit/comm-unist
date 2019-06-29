package com.google.android.gms.internal;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.common.internal.zzbo;

public final class bd implements zzcxo {
    private final Context mContext;

    public bd(Context context) {
        this.mContext = (Context) zzbo.zzu(context);
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        String string = Secure.getString(this.mContext.getContentResolver(), "android_id");
        return string != null ? new eb(string) : dv.zzbLu;
    }
}
