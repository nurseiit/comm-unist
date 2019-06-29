package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public final class ej {
    private zzbr zzbGv;
    private final Map<String, zzbr> zzbKZ;

    private ej() {
        this.zzbKZ = new HashMap();
    }

    public final ei zzDy() {
        return new ei(this.zzbKZ, this.zzbGv);
    }

    public final ej zzb(String str, zzbr zzbr) {
        this.zzbKZ.put(str, zzbr);
        return this;
    }

    public final ej zzl(zzbr zzbr) {
        this.zzbGv = zzbr;
        return this;
    }
}
