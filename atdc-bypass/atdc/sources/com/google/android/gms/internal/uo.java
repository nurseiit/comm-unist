package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class uo {
    private static final uz<Map<vq, un>> zzcgk = new up();
    private static final uz<Map<vq, un>> zzcgl = new uq();
    private static final uz<un> zzcgm = new ur();
    private static final uz<un> zzcgn = new us();
    private final wl zzbZE;
    private final ui zzcfX;
    private uv<Map<vq, un>> zzcgo;
    private final ys zzcgp;
    private long zzcgq = 0;

    public uo(ui uiVar, wl wlVar, ys ysVar) {
        this.zzcfX = uiVar;
        this.zzbZE = wlVar;
        this.zzcgp = ysVar;
        this.zzcgo = new uv(null);
        try {
            this.zzcfX.beginTransaction();
            this.zzcfX.zzan(this.zzcgp.zzJF());
            this.zzcfX.setTransactionSuccessful();
            for (un unVar : this.zzcfX.zzFu()) {
                this.zzcgq = Math.max(unVar.id + 1, this.zzcgq);
                zzb(unVar);
            }
        } finally {
            this.zzcfX.endTransaction();
        }
    }

    private final boolean zzD(qr qrVar) {
        return this.zzcgo.zza(qrVar, zzcgk) != null;
    }

    private final Set<Long> zzE(qr qrVar) {
        HashSet hashSet = new HashSet();
        Map map = (Map) this.zzcgo.zzJ(qrVar);
        if (map != null) {
            for (un unVar : map.values()) {
                if (!unVar.zzcgi.zzIq()) {
                    hashSet.add(Long.valueOf(unVar.id));
                }
            }
        }
        return hashSet;
    }

    private final List<un> zza(uz<un> uzVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.zzcgo.iterator();
        while (it.hasNext()) {
            for (un unVar : ((Map) ((Entry) it.next()).getValue()).values()) {
                if (uzVar.zzaj(unVar)) {
                    arrayList.add(unVar);
                }
            }
        }
        return arrayList;
    }

    private final void zza(un unVar) {
        zzb(unVar);
        this.zzcfX.zza(unVar);
    }

    private final void zzb(un unVar) {
        vt vtVar = unVar.zzcgi;
        boolean z = true;
        boolean z2 = !vtVar.zzIq() || vtVar.isDefault();
        zd.zzb(z2, "Can't have tracked non-default query that loads all data");
        Map map = (Map) this.zzcgo.zzJ(unVar.zzcgi.zzFq());
        if (map == null) {
            map = new HashMap();
            this.zzcgo = this.zzcgo.zzb(unVar.zzcgi.zzFq(), (Object) map);
        }
        un unVar2 = (un) map.get(unVar.zzcgi.zzIu());
        if (!(unVar2 == null || unVar2.id == unVar.id)) {
            z = false;
        }
        zd.zzaF(z);
        map.put(unVar.zzcgi.zzIu(), unVar);
    }

    private final void zzb(vt vtVar, boolean z) {
        un unVar;
        vt zzj = zzj(vtVar);
        un zzk = zzk(zzj);
        long zzJF = this.zzcgp.zzJF();
        if (zzk != null) {
            un unVar2 = new un(zzk.id, zzk.zzcgi, zzJF, zzk.complete, zzk.zzbpf);
            unVar = new un(unVar2.id, unVar2.zzcgi, unVar2.zzcgj, unVar2.complete, z);
        } else {
            long j = this.zzcgq;
            this.zzcgq = j + 1;
            zzk = new un(j, zzj, zzJF, false, z);
        }
        zza(unVar);
    }

    private static vt zzj(vt vtVar) {
        return vtVar.zzIq() ? vt.zzM(vtVar.zzFq()) : vtVar;
    }

    public final Set<wp> zzA(qr qrVar) {
        HashSet hashSet = new HashSet();
        Set zzE = zzE(qrVar);
        if (!zzE.isEmpty()) {
            hashSet.addAll(this.zzcfX.zze(zzE));
        }
        Iterator it = this.zzcgo.zzH(qrVar).zzHS().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            wp wpVar = (wp) entry.getKey();
            uv uvVar = (uv) entry.getValue();
            if (uvVar.getValue() != null && zzcgk.zzaj((Map) uvVar.getValue())) {
                hashSet.add(wpVar);
            }
        }
        return hashSet;
    }

    public final void zzB(qr qrVar) {
        if (!zzD(qrVar)) {
            vt zzM = vt.zzM(qrVar);
            un zzk = zzk(zzM);
            if (zzk == null) {
                long j = this.zzcgq;
                this.zzcgq = j + 1;
                un unVar = new un(j, zzM, this.zzcgp.zzJF(), true, false);
            } else {
                zzk = zzk.zzHO();
            }
            zza(zzk);
        }
    }

    public final boolean zzC(qr qrVar) {
        return this.zzcgo.zzb(qrVar, zzcgl) != null;
    }

    public final long zzHP() {
        return (long) zza(zzcgm).size();
    }

    public final uj zza(uc ucVar) {
        int size;
        int i;
        List zza = zza(zzcgm);
        long size2 = (long) zza.size();
        long min = size2 - Math.min((long) Math.floor((double) (((float) size2) * (1.0f - ucVar.zzHK()))), ucVar.zzHL());
        uj ujVar = new uj();
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            size = zza.size();
            StringBuilder stringBuilder = new StringBuilder(80);
            stringBuilder.append("Pruning old queries.  Prunable: ");
            stringBuilder.append(size);
            stringBuilder.append(" Count to prune: ");
            stringBuilder.append(min);
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        Collections.sort(zza, new uu(this));
        uj ujVar2 = ujVar;
        for (i = 0; ((long) i) < min; i++) {
            un unVar = (un) zza.get(i);
            ujVar2 = ujVar2.zzx(unVar.zzcgi.zzFq());
            vt zzj = zzj(unVar.zzcgi);
            this.zzcfX.zzam(zzk(zzj).id);
            Map map = (Map) this.zzcgo.zzJ(zzj.zzFq());
            map.remove(zzj.zzIu());
            if (map.isEmpty()) {
                this.zzcgo = this.zzcgo.zzI(zzj.zzFq());
            }
        }
        for (i = (int) min; i < zza.size(); i++) {
            ujVar2 = ujVar2.zzy(((un) zza.get(i)).zzcgi.zzFq());
        }
        List<un> zza2 = zza(zzcgn);
        if (this.zzbZE.zzIH()) {
            wl wlVar2 = this.zzbZE;
            size = zza2.size();
            StringBuilder stringBuilder2 = new StringBuilder(31);
            stringBuilder2.append("Unprunable queries: ");
            stringBuilder2.append(size);
            wlVar2.zzb(stringBuilder2.toString(), null, new Object[0]);
        }
        for (un unVar2 : zza2) {
            ujVar2 = ujVar2.zzy(unVar2.zzcgi.zzFq());
        }
        return ujVar2;
    }

    public final void zzg(vt vtVar) {
        zzb(vtVar, true);
    }

    public final void zzh(vt vtVar) {
        zzb(vtVar, false);
    }

    public final un zzk(vt vtVar) {
        vtVar = zzj(vtVar);
        Map map = (Map) this.zzcgo.zzJ(vtVar.zzFq());
        return map != null ? (un) map.get(vtVar.zzIu()) : null;
    }

    public final void zzl(vt vtVar) {
        un zzk = zzk(zzj(vtVar));
        if (zzk != null && !zzk.complete) {
            zza(zzk.zzHO());
        }
    }

    public final boolean zzm(vt vtVar) {
        if (zzD(vtVar.zzFq())) {
            return true;
        }
        if (vtVar.zzIq()) {
            return false;
        }
        Map map = (Map) this.zzcgo.zzJ(vtVar.zzFq());
        return map != null && map.containsKey(vtVar.zzIu()) && ((un) map.get(vtVar.zzIu())).complete;
    }

    public final void zzz(qr qrVar) {
        this.zzcgo.zzH(qrVar).zza(new ut(this));
    }
}
