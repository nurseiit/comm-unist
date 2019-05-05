package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.Callable;

final class sr implements Callable<List<? extends vk>> {
    private /* synthetic */ so zzceR;
    private /* synthetic */ qi zzceU;

    sr(so soVar, qi qiVar) {
        this.zzceR = soVar;
        this.zzceU = qiVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        vg vgVar;
        vt zzGH = this.zzceU.zzGH();
        qr zzFq = zzGH.zzFq();
        uv zzd = this.zzceR.zzceG;
        xm xmVar = null;
        qr qrVar = zzFq;
        boolean z = false;
        while (true) {
            boolean z2 = true;
            if (zzd.isEmpty()) {
                break;
            }
            sn snVar = (sn) zzd.getValue();
            if (snVar != null) {
                if (xmVar == null) {
                    xmVar = snVar.zzr(qrVar);
                }
                if (!(z || snVar.zzHo())) {
                    z2 = false;
                }
                z = z2;
            }
            zzd = zzd.zze(qrVar.isEmpty() ? wp.zzgT("") : qrVar.zzHc());
            qrVar = qrVar.zzHd();
        }
        sn snVar2 = (sn) this.zzceR.zzceG.zzJ(zzFq);
        if (snVar2 == null) {
            snVar2 = new sn(this.zzceR.zzceF);
            this.zzceR.zzceG = this.zzceR.zzceG.zzb(zzFq, (Object) snVar2);
        } else {
            z = z || snVar2.zzHo();
            if (xmVar == null) {
                xmVar = snVar2.zzr(qr.zzGZ());
            }
        }
        this.zzceR.zzceF.zzg(zzGH);
        if (xmVar != null) {
            vgVar = new vg(xf.zza(xmVar, zzGH.zzIm()), true, false);
        } else {
            vgVar = this.zzceR.zzceF.zzf(zzGH);
            if (!vgVar.zzHU()) {
                xmVar = xd.zzJb();
                Iterator it = this.zzceR.zzceG.zzH(zzFq).zzHS().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    sn snVar3 = (sn) ((uv) entry.getValue()).getValue();
                    if (snVar3 != null) {
                        xm zzr = snVar3.zzr(qr.zzGZ());
                        if (zzr != null) {
                            xmVar = xmVar.zze((wp) entry.getKey(), zzr);
                        }
                    }
                }
                for (xl xlVar : vgVar.zzFn()) {
                    if (!xmVar.zzk(xlVar.zzJk())) {
                        xmVar = xmVar.zze(xlVar.zzJk(), xlVar.zzFn());
                    }
                }
                vgVar = new vg(xf.zza(xmVar, zzGH.zzIm()), false, false);
            }
        }
        boolean zzc = snVar2.zzc(zzGH);
        if (!(zzc || zzGH.zzIq())) {
            th zzf = this.zzceR.zzHr();
            this.zzceR.zzceJ.put(zzGH, zzf);
            this.zzceR.zzceI.put(zzf, zzGH);
        }
        List zza = snVar2.zza(this.zzceU, this.zzceR.zzceH.zzt(zzFq), vgVar);
        if (!(zzc || r5)) {
            this.zzceR.zza(zzGH, snVar2.zzb(zzGH));
        }
        return zza;
    }
}
