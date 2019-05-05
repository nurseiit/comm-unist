package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.io.UnsupportedEncodingException;

public final class x extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        try {
            return new eb(w.encode(zzcxp.zzd(dpVarArr.length > 0 ? (dp) zzbo.zzu(dpVarArr[0]) : dv.zzbLu), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.!~*'()"));
        } catch (UnsupportedEncodingException unused) {
            return dv.zzbLu;
        }
    }
}
