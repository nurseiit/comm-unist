package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class dl {
    private String zzaxs;
    private List<zzcxn> zzbLf = new ArrayList();

    public final dj zzDh() {
        return new dj(this.zzaxs, this.zzbLf, null);
    }

    public final dl zza(zzcxn zzcxn) {
        this.zzbLf.add(zzcxn);
        return this;
    }

    public final dl zzfX(String str) {
        this.zzaxs = str;
        return this;
    }
}
