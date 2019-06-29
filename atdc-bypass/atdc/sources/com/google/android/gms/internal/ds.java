package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ds extends dp<Boolean> {
    private static final Map<String, zzcxo> zzbLo;
    private final Boolean zzbLn;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzczp.zzbJW);
        hashMap.put("toString", new r());
        zzbLo = Collections.unmodifiableMap(hashMap);
    }

    public ds(Boolean bool) {
        zzbo.zzu(bool);
        this.zzbLn = bool;
    }

    public final boolean equals(Object obj) {
        return this == obj || ((obj instanceof ds) && ((ds) obj).zzbLn == this.zzbLn);
    }

    public final String toString() {
        return this.zzbLn.toString();
    }

    public final /* synthetic */ Object zzDl() {
        return this.zzbLn;
    }

    public final Boolean zzDn() {
        return this.zzbLn;
    }

    public final boolean zzga(String str) {
        return zzbLo.containsKey(str);
    }

    public final zzcxo zzgb(String str) {
        if (zzga(str)) {
            return (zzcxo) zzbLo.get(str);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 54);
        stringBuilder.append("Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" is not defined for type BooleanWrapper.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
