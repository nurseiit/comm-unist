package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.em;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class zzff implements zzfh {
    private /* synthetic */ Map zzbGq;
    private /* synthetic */ Map zzbGr;
    private /* synthetic */ Map zzbGs;
    private /* synthetic */ Map zzbGt;

    zzff(zzfc zzfc, Map map, Map map2, Map map3, Map map4) {
        this.zzbGq = map;
        this.zzbGr = map2;
        this.zzbGs = map3;
        this.zzbGt = map4;
    }

    public final void zza(em emVar, Set<ei> set, Set<ei> set2, zzer zzer) {
        List list = (List) this.zzbGq.get(emVar);
        this.zzbGr.get(emVar);
        if (list != null) {
            set.addAll(list);
            zzer.zzBt();
        }
        List list2 = (List) this.zzbGs.get(emVar);
        this.zzbGt.get(emVar);
        if (list2 != null) {
            set2.addAll(list2);
            zzer.zzBu();
        }
    }
}
