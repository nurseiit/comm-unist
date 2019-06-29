package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class dz extends dp<Map<String, dp<?>>> {
    private static final Map<String, zzcxo> zzbLo;
    private boolean zzbLC = false;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("hasOwnProperty", zzczp.zzbJW);
        zzbLo = Collections.unmodifiableMap(hashMap);
    }

    public dz(Map<String, dp<?>> map) {
        this.zzbLl = (Map) zzbo.zzu(map);
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : obj instanceof dz ? this.zzbLl.entrySet().equals(((dz) obj).zzbLl.entrySet()) : false;
    }

    public final boolean isImmutable() {
        return this.zzbLC;
    }

    public final String toString() {
        return this.zzbLl.toString();
    }

    public final Iterator<dp<?>> zzDk() {
        return zzDm();
    }

    public final /* synthetic */ Object zzDl() {
        return this.zzbLl;
    }

    public final Map<String, dp<?>> zzDt() {
        return this.zzbLl;
    }

    public final void zzDu() {
        this.zzbLC = true;
    }

    public final dp<?> zzfZ(String str) {
        dp zzfZ = super.zzfZ(str);
        return zzfZ == null ? dv.zzbLu : zzfZ;
    }

    public final boolean zzga(String str) {
        return zzbLo.containsKey(str);
    }

    public final zzcxo zzgb(String str) {
        if (zzga(str)) {
            return (zzcxo) zzbLo.get(str);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
        stringBuilder.append("Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" is not defined for type ListWrapper.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
