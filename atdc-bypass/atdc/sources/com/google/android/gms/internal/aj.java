package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.internal.zzbo;

public final class aj implements zzcxo {
    private final Context mContext;

    public aj(Context context) {
        this.mContext = (Context) zzbo.zzu(context);
    }

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length != 0) {
            z = false;
        }
        zzbo.zzaf(z);
        try {
            return new dt(Double.valueOf((double) this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode));
        } catch (NameNotFoundException e) {
            String valueOf = String.valueOf(this.mContext.getPackageName());
            String valueOf2 = String.valueOf(e.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 25) + String.valueOf(valueOf2).length());
            stringBuilder.append("Package name ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" not found. ");
            stringBuilder.append(valueOf2);
            zzcvk.e(stringBuilder.toString());
            return dv.zzbLu;
        }
    }
}
