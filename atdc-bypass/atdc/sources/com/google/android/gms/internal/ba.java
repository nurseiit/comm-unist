package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Locale;

public final class ba implements zzcxo {
    public final dp<?> zzb(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = false;
        zzbo.zzaf(dpVarArr != null);
        if (dpVarArr.length == 0) {
            z = true;
        }
        zzbo.zzaf(z);
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return new eb("");
        }
        String language = locale.getLanguage();
        return language == null ? new eb("") : new eb(language.toLowerCase());
    }
}
