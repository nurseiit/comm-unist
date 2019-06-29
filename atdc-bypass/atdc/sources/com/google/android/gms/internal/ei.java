package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public final class ei {
    private final zzbr zzbGv;
    private final Map<String, zzbr> zzbKZ;

    private ei(Map<String, zzbr> map, zzbr zzbr) {
        this.zzbKZ = map;
        this.zzbGv = zzbr;
    }

    public static ej zzDx() {
        return new ej();
    }

    public final String toString() {
        String valueOf = String.valueOf(Collections.unmodifiableMap(this.zzbKZ));
        String valueOf2 = String.valueOf(this.zzbGv);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 32) + String.valueOf(valueOf2).length());
        stringBuilder.append("Properties: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" pushAfterEvaluate: ");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final zzbr zzBN() {
        return this.zzbGv;
    }

    public final Map<String, zzbr> zzCZ() {
        return Collections.unmodifiableMap(this.zzbKZ);
    }

    public final void zza(String str, zzbr zzbr) {
        this.zzbKZ.put(str, zzbr);
    }
}
