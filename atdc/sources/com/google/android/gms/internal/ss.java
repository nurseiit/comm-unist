package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

final class ss implements Callable<List<vk>> {
    private /* synthetic */ vt zzcdP;
    private /* synthetic */ so zzceR;
    private /* synthetic */ qi zzceU;
    private /* synthetic */ DatabaseError zzceV;

    ss(so soVar, vt vtVar, qi qiVar, DatabaseError databaseError) {
        this.zzceR = soVar;
        this.zzcdP = vtVar;
        this.zzceU = qiVar;
        this.zzceV = databaseError;
    }

    public final /* synthetic */ Object call() throws Exception {
        qr zzFq = this.zzcdP.zzFq();
        sn snVar = (sn) this.zzceR.zzceG.zzJ(zzFq);
        Object arrayList = new ArrayList();
        if (snVar != null && (this.zzcdP.isDefault() || snVar.zzc(this.zzcdP))) {
            Object obj;
            za zza = snVar.zza(this.zzcdP, this.zzceU, this.zzceV);
            if (snVar.isEmpty()) {
                this.zzceR.zzceG = this.zzceR.zzceG.zzI(zzFq);
            }
            List<vt> list = (List) zza.getFirst();
            arrayList = (List) zza.zzJG();
            loop0:
            while (true) {
                obj = null;
                for (vt vtVar : list) {
                    this.zzceR.zzceF.zzh(this.zzcdP);
                    if (obj != null || vtVar.zzIq()) {
                        obj = 1;
                    }
                }
                break loop0;
            }
            uv zzd = this.zzceR.zzceG;
            Object obj2 = (zzd.getValue() == null || !((sn) zzd.getValue()).zzHo()) ? null : 1;
            Iterator it = zzFq.iterator();
            while (it.hasNext()) {
                zzd = zzd.zze((wp) it.next());
                obj2 = (obj2 != null || (zzd.getValue() != null && ((sn) zzd.getValue()).zzHo())) ? 1 : null;
                if (obj2 == null) {
                    if (zzd.isEmpty()) {
                        break;
                    }
                }
                break;
            }
            if (obj != null && obj2 == null) {
                uv zzH = this.zzceR.zzceG.zzH(zzFq);
                if (!zzH.isEmpty()) {
                    for (vu vuVar : this.zzceR.zza(zzH)) {
                        tf tfVar = new tf(this.zzceR, vuVar);
                        this.zzceR.zzceL.zza(so.zzd(vuVar.zzIv()), tfVar.zzcff, tfVar, tfVar);
                    }
                }
            }
            if (obj2 == null && !list.isEmpty() && this.zzceV == null) {
                if (obj != null) {
                    this.zzceR.zzceL.zza(so.zzd(this.zzcdP), null);
                } else {
                    for (vt vtVar2 : list) {
                        this.zzceR.zzceL.zza(so.zzd(vtVar2), this.zzceR.zze(vtVar2));
                    }
                }
            }
            this.zzceR.zzU(list);
        }
        return arrayList;
    }
}
