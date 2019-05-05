package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Locale;

public final class s extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        return new eb(((eb) dpVarArr[0]).value().toUpperCase(Locale.ENGLISH));
    }
}
