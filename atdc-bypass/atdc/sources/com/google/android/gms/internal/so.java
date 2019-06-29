package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class so {
    private final wl zzbZE;
    private final uh zzceF;
    private uv<sn> zzceG = uv.zzHR();
    private final tp zzceH = new tp();
    private final Map<th, vt> zzceI = new HashMap();
    private final Map<vt, th> zzceJ = new HashMap();
    private final Set<vt> zzceK = new HashSet();
    private final tg zzceL;
    private long zzceM = 1;

    public so(qd qdVar, uh uhVar, tg tgVar) {
        this.zzceL = tgVar;
        this.zzceF = uhVar;
        this.zzbZE = qdVar.zzgP("SyncTree");
    }

    private final th zzHr() {
        long j = this.zzceM;
        this.zzceM = j + 1;
        return new th(j);
    }

    private final void zzU(List<vt> list) {
        for (vt vtVar : list) {
            if (!vtVar.zzIq()) {
                th zze = zze(vtVar);
                this.zzceJ.remove(vtVar);
                this.zzceI.remove(zze);
            }
        }
    }

    private final List<vk> zza(tx txVar) {
        return zza(txVar, this.zzceG, null, this.zzceH.zzt(qr.zzGZ()));
    }

    private final List<vk> zza(tx txVar, uv<sn> uvVar, xm xmVar, ts tsVar) {
        if (txVar.zzFq().isEmpty()) {
            return zzb(txVar, uvVar, xmVar, tsVar);
        }
        sn snVar = (sn) uvVar.getValue();
        if (xmVar == null && snVar != null) {
            xmVar = snVar.zzr(qr.zzGZ());
        }
        ArrayList arrayList = new ArrayList();
        wp zzHc = txVar.zzFq().zzHc();
        tx zzc = txVar.zzc(zzHc);
        uv uvVar2 = (uv) uvVar.zzHS().get(zzHc);
        if (!(uvVar2 == null || zzc == null)) {
            arrayList.addAll(zza(zzc, uvVar2, xmVar != null ? xmVar.zzm(zzHc) : null, tsVar.zzb(zzHc)));
        }
        if (snVar != null) {
            arrayList.addAll(snVar.zza(txVar, tsVar, xmVar));
        }
        return arrayList;
    }

    private final List<vu> zza(uv<sn> uvVar) {
        List arrayList = new ArrayList();
        zza((uv) uvVar, arrayList);
        return arrayList;
    }

    private final List<? extends vk> zza(vt vtVar, tx txVar) {
        qr zzFq = vtVar.zzFq();
        return ((sn) this.zzceG.zzJ(zzFq)).zza(txVar, this.zzceH.zzt(zzFq), null);
    }

    private final void zza(uv<sn> uvVar, List<vu> list) {
        sn snVar = (sn) uvVar.getValue();
        if (snVar == null || !snVar.zzHo()) {
            if (snVar != null) {
                list.addAll(snVar.zzHn());
            }
            Iterator it = uvVar.zzHS().iterator();
            while (it.hasNext()) {
                zza((uv) ((Entry) it.next()).getValue(), (List) list);
            }
            return;
        }
        list.add(snVar.zzHp());
    }

    private final void zza(vt vtVar, vu vuVar) {
        qr zzFq = vtVar.zzFq();
        th zze = zze(vtVar);
        tf tfVar = new tf(this, vuVar);
        this.zzceL.zza(zzd(vtVar), zze, tfVar, tfVar);
        uv zzH = this.zzceG.zzH(zzFq);
        if (zze == null) {
            zzH.zza(new st(this));
        }
    }

    private final vt zzb(th thVar) {
        return (vt) this.zzceI.get(thVar);
    }

    private final List<vk> zzb(tx txVar, uv<sn> uvVar, xm xmVar, ts tsVar) {
        sn snVar = (sn) uvVar.getValue();
        if (xmVar == null && snVar != null) {
            xmVar = snVar.zzr(qr.zzGZ());
        }
        ArrayList arrayList = new ArrayList();
        uvVar.zzHS().zza(new su(this, xmVar, tsVar, txVar, arrayList));
        if (snVar != null) {
            arrayList.addAll(snVar.zza(txVar, tsVar, xmVar));
        }
        return arrayList;
    }

    private final List<vk> zzb(vt vtVar, qi qiVar, DatabaseError databaseError) {
        return (List) this.zzceF.zzg(new ss(this, vtVar, qiVar, databaseError));
    }

    private static vt zzd(vt vtVar) {
        return (!vtVar.zzIq() || vtVar.isDefault()) ? vtVar : vt.zzM(vtVar.zzFq());
    }

    private final th zze(vt vtVar) {
        return (th) this.zzceJ.get(vtVar);
    }

    public final boolean isEmpty() {
        return this.zzceG.isEmpty();
    }

    public final List<? extends vk> zzHq() {
        return (List) this.zzceF.zzg(new sx(this));
    }

    public final List<? extends vk> zza(long j, boolean z, boolean z2, ys ysVar) {
        return (List) this.zzceF.zzg(new sw(this, z2, j, z, ysVar));
    }

    public final List<? extends vk> zza(qr qrVar, pz pzVar, pz pzVar2, long j, boolean z) {
        return (List) this.zzceF.zzg(new sv(this, z, qrVar, pzVar, j, pzVar2));
    }

    public final List<? extends vk> zza(qr qrVar, xm xmVar, th thVar) {
        return (List) this.zzceF.zzg(new tc(this, thVar, qrVar, xmVar));
    }

    public final List<? extends vk> zza(qr qrVar, xm xmVar, xm xmVar2, long j, boolean z, boolean z2) {
        boolean z3 = z || !z2;
        zd.zzb(z3, "We shouldn't be persisting non-visible writes.");
        return (List) this.zzceF.zzg(new sp(this, z2, qrVar, xmVar, j, xmVar2, z));
    }

    public final List<? extends vk> zza(qr qrVar, List<xt> list, th thVar) {
        vt zzb = zzb(thVar);
        if (zzb == null) {
            return Collections.emptyList();
        }
        xm zzIw = ((sn) this.zzceG.zzJ(zzb.zzFq())).zzb(zzb).zzIw();
        for (xt zzm : list) {
            zzIw = zzm.zzm(zzIw);
        }
        return zza(qrVar, zzIw, thVar);
    }

    public final List<? extends vk> zza(qr qrVar, Map<qr, xm> map) {
        return (List) this.zzceF.zzg(new sz(this, map, qrVar));
    }

    public final List<? extends vk> zza(qr qrVar, Map<qr, xm> map, th thVar) {
        return (List) this.zzceF.zzg(new sq(this, thVar, qrVar, map));
    }

    public final List<? extends vk> zza(th thVar) {
        return (List) this.zzceF.zzg(new tb(this, thVar));
    }

    public final List<vk> zza(vt vtVar, DatabaseError databaseError) {
        return zzb(vtVar, null, databaseError);
    }

    public final void zza(vt vtVar, boolean z) {
        if (!z || this.zzceK.contains(vtVar)) {
            if (!z && this.zzceK.contains(vtVar)) {
                zzh(new te(vtVar));
                this.zzceK.remove(vtVar);
            }
            return;
        }
        zzg(new te(vtVar));
        this.zzceK.add(vtVar);
    }

    public final List<? extends vk> zzb(qr qrVar, List<xt> list) {
        sn snVar = (sn) this.zzceG.zzJ(qrVar);
        if (snVar == null) {
            return Collections.emptyList();
        }
        vu zzHp = snVar.zzHp();
        if (zzHp == null) {
            return Collections.emptyList();
        }
        xm zzIw = zzHp.zzIw();
        for (xt zzm : list) {
            zzIw = zzm.zzm(zzIw);
        }
        return zzi(qrVar, zzIw);
    }

    public final xm zzc(qr qrVar, List<Long> list) {
        uv uvVar = this.zzceG;
        uvVar.getValue();
        qr zzGZ = qr.zzGZ();
        xm xmVar = null;
        uv uvVar2 = uvVar;
        qr qrVar2 = qrVar;
        do {
            wp zzHc = qrVar2.zzHc();
            qrVar2 = qrVar2.zzHd();
            zzGZ = zzGZ.zza(zzHc);
            qr zza = qr.zza(zzGZ, qrVar);
            uvVar2 = zzHc != null ? uvVar2.zze(zzHc) : uv.zzHR();
            sn snVar = (sn) uvVar2.getValue();
            if (snVar != null) {
                xmVar = snVar.zzr(zza);
            }
            if (qrVar2.isEmpty()) {
                break;
            }
        } while (xmVar == null);
        return this.zzceH.zza(qrVar, xmVar, (List) list, true);
    }

    public final List<? extends vk> zzg(qi qiVar) {
        return (List) this.zzceF.zzg(new sr(this, qiVar));
    }

    public final List<vk> zzh(qi qiVar) {
        return zzb(qiVar.zzGH(), qiVar, null);
    }

    public final List<? extends vk> zzi(qr qrVar, xm xmVar) {
        return (List) this.zzceF.zzg(new sy(this, qrVar, xmVar));
    }

    public final List<? extends vk> zzs(qr qrVar) {
        return (List) this.zzceF.zzg(new ta(this, qrVar));
    }
}
