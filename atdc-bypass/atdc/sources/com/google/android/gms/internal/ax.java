package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ax extends zzcxq {
    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length > 0);
        if (dpVarArr[0] == dv.zzbLu) {
            return dv.zzbLu;
        }
        byte[] bytes;
        String zzd = zzcxp.zzd(dpVarArr[0]);
        String str = "MD5";
        if (dpVarArr.length > 1) {
            str = dpVarArr[1] == dv.zzbLu ? "MD5" : zzcxp.zzd(dpVarArr[1]);
        }
        Object obj = "text";
        if (dpVarArr.length > 2) {
            obj = dpVarArr[2] == dv.zzbLu ? "text" : zzcxp.zzd(dpVarArr[2]);
        }
        if ("text".equals(obj)) {
            bytes = zzd.getBytes();
        } else if ("base16".equals(obj)) {
            bytes = zzcue.decode(zzd);
        } else {
            zzd = "Hash: Unknown input format: ";
            String valueOf = String.valueOf(obj);
            throw new RuntimeException(valueOf.length() != 0 ? zzd.concat(valueOf) : new String(zzd));
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bytes);
            return new eb(zzcue.encode(instance.digest()));
        } catch (NoSuchAlgorithmException e) {
            zzd = "Hash: Unknown algorithm: ";
            str = String.valueOf(str);
            throw new RuntimeException(str.length() != 0 ? zzd.concat(str) : new String(zzd), e);
        }
    }
}
