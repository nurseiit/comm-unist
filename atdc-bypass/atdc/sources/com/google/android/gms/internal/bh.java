package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class bh extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        int i = 1;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length >= 2);
        if (dpVarArr[0] == dv.zzbLu || dpVarArr[1] == dv.zzbLu) {
            return dv.zzbLu;
        }
        String zzd = zzcxp.zzd(dpVarArr[0]);
        String zzd2 = zzcxp.zzd(dpVarArr[1]);
        int i2 = 64;
        if (dpVarArr.length > 2 && dpVarArr[2] != dv.zzbLu && zzcxp.zza(dpVarArr[2])) {
            i2 = 66;
        }
        if (dpVarArr.length > 3 && dpVarArr[3] != dv.zzbLu) {
            if (!(dpVarArr[3] instanceof dt)) {
                return dv.zzbLu;
            }
            double zzc = zzcxp.zzc(dpVarArr[3]);
            if (Double.isInfinite(zzc) || zzc < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                return dv.zzbLu;
            }
            i = (int) zzc;
        }
        String str = null;
        try {
            Matcher matcher = Pattern.compile(zzd2, i2).matcher(zzd);
            if (matcher.find() && matcher.groupCount() >= i) {
                str = matcher.group(i);
            }
            return str == null ? dv.zzbLu : new eb(str);
        } catch (PatternSyntaxException unused) {
            return dv.zzbLu;
        }
    }
}
