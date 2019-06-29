package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public final class df {
    private final Map<String, dm> zzbKZ = new HashMap();
    private dm zzbLa;

    public final dd zzDa() {
        return new dd(this.zzbKZ, this.zzbLa, null);
    }

    public final df zza(String str, dm dmVar) {
        this.zzbKZ.put(str, dmVar);
        return this;
    }

    public final df zzb(dm dmVar) {
        this.zzbLa = dmVar;
        return this;
    }
}
