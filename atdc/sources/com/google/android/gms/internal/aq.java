package com.google.android.gms.internal;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.common.internal.zzbo;

public final class aq implements zzcxo {
    private final Context mContext;

    public aq(Context context) {
        this.mContext = context;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        String string = Secure.getString(this.mContext.getContentResolver(), "android_id");
        if (string == null) {
            string = "";
        }
        return new eb(string);
    }
}
