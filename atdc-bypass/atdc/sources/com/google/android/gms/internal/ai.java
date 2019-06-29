package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.internal.zzbo;

public final class ai implements zzcxo {
    private Context mContext;

    public ai(Context context) {
        this.mContext = context;
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length != 0) {
            z = false;
        }
        zzbo.zzaf(z);
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            return new eb(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mContext.getPackageName(), 0)).toString());
        } catch (NameNotFoundException unused) {
            return new eb("");
        }
    }
}
