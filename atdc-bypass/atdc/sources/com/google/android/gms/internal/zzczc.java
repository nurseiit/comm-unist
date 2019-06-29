package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzczc extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 1);
        zzbo.zzaf(!(dpVarArr[0] instanceof ea));
        zzbo.zzaf(1 ^ ed.zzm(dpVarArr[0]));
        dp<?> dpVar = dpVarArr[0];
        String str = "object";
        if (dpVar == dv.zzbLu) {
            str = "undefined";
        } else if (dpVar instanceof ds) {
            str = "boolean";
        } else if (dpVar instanceof dt) {
            str = "number";
        } else if (dpVar instanceof eb) {
            str = "string";
        } else if (dpVar instanceof du) {
            str = "function";
        }
        return new eb(str);
    }
}
