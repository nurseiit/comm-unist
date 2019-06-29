package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class zzczd extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzcxo zzDp;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 3);
        zzbo.zzaf(dpVarArr[1] instanceof eb);
        zzbo.zzaf(dpVarArr[2] instanceof dw);
        dp dpVar = dpVarArr[0];
        String value = ((eb) dpVarArr[1]).value();
        List zzDs = ((dw) dpVarArr[2]).zzDs();
        StringBuilder stringBuilder;
        if (dpVar.zzfY(value)) {
            dp zzfZ = dpVar.zzfZ(value);
            if (zzfZ instanceof du) {
                zzDp = ((du) zzfZ).zzDp();
            } else {
                stringBuilder = new StringBuilder(String.valueOf(value).length() + 35);
                stringBuilder.append("Apply TypeError: ");
                stringBuilder.append(value);
                stringBuilder.append(" is not a function");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        } else if (dpVar.zzga(value)) {
            zzDp = dpVar.zzgb(value);
            zzDs.add(0, dpVar);
        } else {
            stringBuilder = new StringBuilder(String.valueOf(value).length() + 40);
            stringBuilder.append("Apply TypeError: object has no ");
            stringBuilder.append(value);
            stringBuilder.append(" property");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return zzDp.zzb(zzcwa, (dp[]) zzDs.toArray(new dp[zzDs.size()]));
    }
}
