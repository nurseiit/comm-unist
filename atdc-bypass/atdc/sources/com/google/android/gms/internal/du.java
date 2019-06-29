package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class du extends dp<zzcxo> {
    private static final Map<String, zzcxo> zzbLo;
    private zzcxo zzbLq;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzczp.zzbJW);
        zzbLo = Collections.unmodifiableMap(hashMap);
    }

    public du(zzcxo zzcxo) {
        this.zzbLq = zzcxo;
    }

    public final String toString() {
        return this.zzbLq.toString();
    }

    public final Iterator<dp<?>> zzDk() {
        return zzDm();
    }

    public final /* synthetic */ Object zzDl() {
        return this.zzbLq;
    }

    public final zzcxo zzDp() {
        return this.zzbLq;
    }

    public final boolean zzga(String str) {
        return zzbLo.containsKey(str);
    }

    public final zzcxo zzgb(String str) {
        if (zzga(str)) {
            return (zzcxo) zzbLo.get(str);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 60);
        stringBuilder.append("Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" is not defined for type InstructionReference.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
