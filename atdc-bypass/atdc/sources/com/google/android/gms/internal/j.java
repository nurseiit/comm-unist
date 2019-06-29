package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class j extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        boolean z = dpVarArr.length > 0 && dpVarArr.length <= 3;
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        String value = ((eb) dpVarArr[0]).value();
        if (dpVarArr.length == 1) {
            return new eb(value);
        }
        String zzd = zzcxp.zzd(dpVarArr[1]);
        dp dpVar = dpVarArr.length < 3 ? dv.zzbLu : dpVarArr[2];
        int indexOf = value.indexOf(zzd);
        if (indexOf == -1) {
            return new eb(value);
        }
        if (dpVar instanceof du) {
            dpVar = ((du) dpVar).zzDp().zzb(zzcwa, new eb(zzd), new dt(Double.valueOf((double) indexOf)), new eb(value));
        }
        String zzd2 = zzcxp.zzd(dpVar);
        String valueOf = String.valueOf(value.substring(0, indexOf));
        value = String.valueOf(value.substring(indexOf + zzd.length()));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + String.valueOf(zzd2).length()) + String.valueOf(value).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(zzd2);
        stringBuilder.append(value);
        return new eb(stringBuilder.toString());
    }
}
