package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class di {
    private final List<dd> zzbLb = new ArrayList();
    private final List<dd> zzbLc = new ArrayList();
    private final List<dd> zzbLd = new ArrayList();
    private final List<dd> zzbLe = new ArrayList();

    public final dg zzDf() {
        return new dg(this.zzbLb, this.zzbLc, this.zzbLd, this.zzbLe, null);
    }

    public final di zzc(dd ddVar) {
        this.zzbLb.add(ddVar);
        return this;
    }

    public final di zzd(dd ddVar) {
        this.zzbLc.add(ddVar);
        return this;
    }

    public final di zze(dd ddVar) {
        this.zzbLd.add(ddVar);
        return this;
    }

    public final di zzf(dd ddVar) {
        this.zzbLe.add(ddVar);
        return this;
    }
}
