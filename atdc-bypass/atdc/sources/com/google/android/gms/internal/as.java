package com.google.android.gms.internal;

import android.os.Build;
import com.google.android.gms.common.internal.zzbo;

public final class as implements zzcxo {
    private final String zzbKc = Build.MANUFACTURER;
    private final String zzbKd = Build.MODEL;

    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        String str = this.zzbKc;
        String str2 = this.zzbKd;
        if (!(str2.startsWith(str) || str.equals("unknown"))) {
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
            stringBuilder.append(str);
            stringBuilder.append(" ");
            stringBuilder.append(str2);
            str2 = stringBuilder.toString();
        }
        return new eb(str2);
    }
}
