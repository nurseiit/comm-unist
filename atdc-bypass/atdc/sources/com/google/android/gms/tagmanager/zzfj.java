package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.em;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class zzfj {
    private ei zzbGA;
    private final Set<em> zzbGm = new HashSet();
    private final Map<em, List<ei>> zzbGw = new HashMap();
    private final Map<em, List<ei>> zzbGx = new HashMap();
    private final Map<em, List<String>> zzbGy = new HashMap();
    private final Map<em, List<String>> zzbGz = new HashMap();

    public final Set<em> zzBO() {
        return this.zzbGm;
    }

    public final Map<em, List<ei>> zzBP() {
        return this.zzbGw;
    }

    public final Map<em, List<String>> zzBQ() {
        return this.zzbGy;
    }

    public final Map<em, List<String>> zzBR() {
        return this.zzbGz;
    }

    public final Map<em, List<ei>> zzBS() {
        return this.zzbGx;
    }

    public final ei zzBT() {
        return this.zzbGA;
    }

    public final void zza(em emVar) {
        this.zzbGm.add(emVar);
    }

    public final void zza(em emVar, ei eiVar) {
        List list = (List) this.zzbGw.get(emVar);
        if (list == null) {
            list = new ArrayList();
            this.zzbGw.put(emVar, list);
        }
        list.add(eiVar);
    }

    public final void zza(em emVar, String str) {
        List list = (List) this.zzbGy.get(emVar);
        if (list == null) {
            list = new ArrayList();
            this.zzbGy.put(emVar, list);
        }
        list.add(str);
    }

    public final void zzb(ei eiVar) {
        this.zzbGA = eiVar;
    }

    public final void zzb(em emVar, ei eiVar) {
        List list = (List) this.zzbGx.get(emVar);
        if (list == null) {
            list = new ArrayList();
            this.zzbGx.put(emVar, list);
        }
        list.add(eiVar);
    }

    public final void zzb(em emVar, String str) {
        List list = (List) this.zzbGz.get(emVar);
        if (list == null) {
            list = new ArrayList();
            this.zzbGz.put(emVar, list);
        }
        list.add(str);
    }
}
