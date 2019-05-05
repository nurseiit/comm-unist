package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Locale;

public final class bb implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        return new eb(Locale.getDefault().getCountry());
    }
}
