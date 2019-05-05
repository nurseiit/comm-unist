package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzgk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class el {
    private String zzaxs;
    private final List<em> zzbKW;
    private final Map<String, List<ei>> zzbKX;
    private int zzbKY;

    private el() {
        this.zzbKW = new ArrayList();
        this.zzbKX = new HashMap();
        this.zzaxs = "";
        this.zzbKY = 0;
    }

    public final ek zzDB() {
        return new ek(this.zzbKW, this.zzbKX, this.zzaxs, this.zzbKY);
    }

    public final el zzb(em emVar) {
        this.zzbKW.add(emVar);
        return this;
    }

    public final el zzbJ(int i) {
        this.zzbKY = i;
        return this;
    }

    public final el zzc(ei eiVar) {
        String zzb = zzgk.zzb((zzbr) eiVar.zzCZ().get(zzbg.INSTANCE_NAME.toString()));
        List list = (List) this.zzbKX.get(zzb);
        if (list == null) {
            list = new ArrayList();
            this.zzbKX.put(zzb, list);
        }
        list.add(eiVar);
        return this;
    }

    public final el zzgd(String str) {
        this.zzaxs = str;
        return this;
    }
}
