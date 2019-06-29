package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class bt extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = dpVarArr.length == 2 || dpVarArr.length == 3;
        zzbo.zzaf(z);
        String zzd = zzcxp.zzd(dpVarArr[0]);
        String zzd2 = zzcxp.zzd(dpVarArr[1]);
        int i = 64;
        if (dpVarArr.length < 3 ? false : "true".equalsIgnoreCase(zzcxp.zzd(dpVarArr[2]))) {
            i = 66;
        }
        try {
            return new ds(Boolean.valueOf(Pattern.compile(zzd2, i).matcher(zzd).find()));
        } catch (PatternSyntaxException unused) {
            return new ds(Boolean.valueOf(false));
        }
    }
}
