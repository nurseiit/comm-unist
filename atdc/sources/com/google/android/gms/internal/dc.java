package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class dc {
    private String zzaxs = "";
    private final List<dg> zzbKW = new ArrayList();
    private final Map<String, dd> zzbKX = new HashMap();
    private int zzbKY = 0;

    public final db zzCY() {
        return new db(this.zzbKW, this.zzbKX, this.zzaxs, 0);
    }

    public final dc zza(dg dgVar) {
        this.zzbKW.add(dgVar);
        return this;
    }

    public final dc zzb(dd ddVar) {
        this.zzbKX.put(((dm) ddVar.zzCZ().get("instance_name")).toString(), ddVar);
        return this;
    }

    public final dc zzfW(String str) {
        this.zzaxs = str;
        return this;
    }
}
