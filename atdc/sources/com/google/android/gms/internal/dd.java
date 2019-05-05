package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public final class dd {
    private final Map<String, dm> zzbKZ;
    private final dm zzbLa;

    private dd(Map<String, dm> map, dm dmVar) {
        this.zzbKZ = Collections.unmodifiableMap(map);
        this.zzbLa = dmVar;
    }

    /* synthetic */ dd(Map map, dm dmVar, de deVar) {
        this(map, dmVar);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbKZ);
        String valueOf2 = String.valueOf(this.zzbLa);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 32) + String.valueOf(valueOf2).length());
        stringBuilder.append("Properties: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" pushAfterEvaluate: ");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final Map<String, dm> zzCZ() {
        return this.zzbKZ;
    }
}
