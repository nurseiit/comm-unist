package com.google.android.gms.internal;

import android.os.Build.VERSION;
import com.google.android.gms.common.internal.zzbo;

public final class bi implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        String valueOf = String.valueOf("5.05-");
        int i = VERSION.SDK_INT;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 11);
        stringBuilder.append(valueOf);
        stringBuilder.append(i);
        return new eb(stringBuilder.toString());
    }
}
