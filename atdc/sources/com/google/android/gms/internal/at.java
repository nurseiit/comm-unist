package com.google.android.gms.internal;

import android.util.Base64;
import com.google.android.gms.common.internal.zzbo;

public final class at extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        String zzd = zzcxp.zzd(dpVarArr[0]);
        Object obj = "text";
        if (dpVarArr.length > 1) {
            obj = zzcxp.zzd(dpVarArr[1]);
        }
        Object obj2 = "base16";
        int i = 2;
        if (dpVarArr.length > 2) {
            obj2 = zzcxp.zzd(dpVarArr[2]);
        }
        if (dpVarArr.length <= 3 || !zzcxp.zza(dpVarArr[3])) {
            z = false;
        }
        if (z) {
            i = 3;
        }
        String str;
        try {
            byte[] bytes;
            String encode;
            if ("text".equals(obj)) {
                bytes = zzd.getBytes();
            } else if ("base16".equals(obj)) {
                bytes = zzcue.decode(zzd);
            } else if ("base64".equals(obj)) {
                bytes = Base64.decode(zzd, i);
            } else if ("base64url".equals(obj)) {
                bytes = Base64.decode(zzd, i | 8);
            } else {
                str = "Encode: unknown input format: ";
                zzd = String.valueOf(obj);
                throw new UnsupportedOperationException(zzd.length() != 0 ? str.concat(zzd) : new String(str));
            }
            if ("base16".equals(obj2)) {
                encode = zzcue.encode(bytes);
            } else if ("base64".equals(obj2)) {
                encode = Base64.encodeToString(bytes, i);
            } else if ("base64url".equals(obj2)) {
                encode = Base64.encodeToString(bytes, i | 8);
            } else {
                str = "Encode: unknown output format: ";
                zzd = String.valueOf(obj2);
                throw new RuntimeException(zzd.length() != 0 ? str.concat(zzd) : new String(str));
            }
            return new eb(encode);
        } catch (IllegalArgumentException unused) {
            str = "Encode: invalid input:";
            zzd = String.valueOf(obj);
            throw new RuntimeException(zzd.length() != 0 ? str.concat(zzd) : new String(str));
        }
    }
}
