package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class vu {
    private final vt zzcgU;
    private final vx zzchl;
    private vw zzchm;
    private final List<qi> zzchn = new ArrayList();
    private final vm zzcho;

    public vu(vt vtVar, vw vwVar) {
        this.zzcgU = vtVar;
        wd wdVar = new wd(vtVar.zzIm());
        wf zzIs = vtVar.zzIu().zzIs();
        this.zzchl = new vx(zzIs);
        vg zzIA = vwVar.zzIA();
        vg zzIy = vwVar.zzIy();
        xf zza = xf.zza(xd.zzJb(), vtVar.zzIm());
        xf zza2 = wdVar.zza(zza, zzIA.zzHW(), null);
        zza = zzIs.zza(zza, zzIy.zzHW(), null);
        this.zzchm = new vw(new vg(zza, zzIy.zzHU(), zzIs.zzIE()), new vg(zza2, zzIA.zzHU(), false));
        this.zzcho = new vm(vtVar);
    }

    private final List<vj> zza(List<vi> list, xf xfVar, qi qiVar) {
        List list2;
        if (qiVar == null) {
            list2 = this.zzchn;
        } else {
            list2 = Arrays.asList(new qi[]{qiVar});
        }
        return this.zzcho.zza(list, xfVar, list2);
    }

    public final boolean isEmpty() {
        return this.zzchn.isEmpty();
    }

    public final vt zzIv() {
        return this.zzcgU;
    }

    public final xm zzIw() {
        return this.zzchm.zzIA().zzFn();
    }

    public final xm zzIx() {
        return this.zzchm.zzIy().zzFn();
    }

    public final List<vk> zza(qi qiVar, DatabaseError databaseError) {
        List<vk> arrayList;
        qi qiVar2;
        if (databaseError != null) {
            arrayList = new ArrayList();
            qr zzFq = this.zzcgU.zzFq();
            for (qi qiVar22 : this.zzchn) {
                arrayList.add(new vh(qiVar22, databaseError, zzFq));
            }
        } else {
            arrayList = Collections.emptyList();
        }
        if (qiVar != null) {
            int i = 0;
            int i2 = -1;
            while (i < this.zzchn.size()) {
                qiVar22 = (qi) this.zzchn.get(i);
                if (qiVar22.zzc(qiVar)) {
                    if (qiVar22.zzGW()) {
                        break;
                    }
                    i2 = i;
                }
                i++;
            }
            i = i2;
            if (i != -1) {
                qiVar = (qi) this.zzchn.get(i);
                this.zzchn.remove(i);
                qiVar.zzGV();
                return arrayList;
            }
        }
        for (qi zzGV : this.zzchn) {
            zzGV.zzGV();
        }
        this.zzchn.clear();
        return arrayList;
    }

    public final vv zzb(tx txVar, ts tsVar, xm xmVar) {
        if (txVar.zzHF() == ty.Merge) {
            txVar.zzHE().zzHI();
        }
        wa zza = this.zzchl.zza(this.zzchm, txVar, tsVar, xmVar);
        this.zzchm = zza.zzchm;
        return new vv(zza(zza.zzchq, zza.zzchm.zzIy().zzHW(), null), zza.zzchq);
    }

    public final void zzb(qi qiVar) {
        this.zzchn.add(qiVar);
    }

    public final List<vj> zzk(qi qiVar) {
        vg zzIy = this.zzchm.zzIy();
        ArrayList arrayList = new ArrayList();
        for (xl xlVar : zzIy.zzFn()) {
            arrayList.add(vi.zzc(xlVar.zzJk(), xlVar.zzFn()));
        }
        if (zzIy.zzHU()) {
            arrayList.add(vi.zza(zzIy.zzHW()));
        }
        return zza(arrayList, zzIy.zzHW(), qiVar);
    }

    public final xm zzr(qr qrVar) {
        xm zzIB = this.zzchm.zzIB();
        return (zzIB == null || (!this.zzcgU.zzIq() && (qrVar.isEmpty() || zzIB.zzm(qrVar.zzHc()).isEmpty()))) ? null : zzIB.zzN(qrVar);
    }
}
