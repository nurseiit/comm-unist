package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class xt {
    private final qr zzciC;
    private final qr zzciD;
    private final xm zzciE;

    public xt(pe peVar) {
        List zzGs = peVar.zzGs();
        qr qrVar = null;
        this.zzciC = zzGs != null ? new qr(zzGs) : null;
        zzGs = peVar.zzGt();
        if (zzGs != null) {
            qrVar = new qr(zzGs);
        }
        this.zzciD = qrVar;
        this.zzciE = xp.zza(peVar.zzGu(), xd.zzJb());
    }

    private final xm zzb(qr qrVar, xm xmVar, xm xmVar2) {
        int zzj = this.zzciC == null ? 1 : qrVar.compareTo(this.zzciC);
        int zzj2 = this.zzciD == null ? -1 : qrVar.compareTo(this.zzciD);
        int i = 0;
        Object obj = (this.zzciC == null || !qrVar.zzi(this.zzciC)) ? null : 1;
        Object obj2 = (this.zzciD == null || !qrVar.zzi(this.zzciD)) ? null : 1;
        if (zzj > 0 && zzj2 < 0 && obj2 == null) {
            return xmVar2;
        }
        if (zzj > 0 && obj2 != null && xmVar2.zzIQ()) {
            return xmVar2;
        }
        if (zzj > 0 && zzj2 == 0) {
            return xmVar.zzIQ() ? xd.zzJb() : xmVar;
        } else {
            if (obj == null && obj2 == null) {
                return xmVar;
            }
            HashSet hashSet = new HashSet();
            for (xl zzJk : xmVar) {
                hashSet.add(zzJk.zzJk());
            }
            for (xl zzJk2 : xmVar2) {
                hashSet.add(zzJk2.zzJk());
            }
            ArrayList arrayList = new ArrayList(hashSet.size() + 1);
            arrayList.addAll(hashSet);
            if (!(xmVar2.zzIR().isEmpty() && xmVar.zzIR().isEmpty())) {
                arrayList.add(wp.zzIL());
            }
            arrayList = arrayList;
            zzj = arrayList.size();
            xm xmVar3 = xmVar;
            while (i < zzj) {
                obj = arrayList.get(i);
                i++;
                wp wpVar = (wp) obj;
                xm zzm = xmVar.zzm(wpVar);
                xm zzb = zzb(qrVar.zza(wpVar), xmVar.zzm(wpVar), xmVar2.zzm(wpVar));
                if (zzb != zzm) {
                    xmVar3 = xmVar3.zze(wpVar, zzb);
                }
            }
            return xmVar3;
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzciC);
        String valueOf2 = String.valueOf(this.zzciD);
        String valueOf3 = String.valueOf(this.zzciE);
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 55) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length());
        stringBuilder.append("RangeMerge{optExclusiveStart=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", optInclusiveEnd=");
        stringBuilder.append(valueOf2);
        stringBuilder.append(", snap=");
        stringBuilder.append(valueOf3);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final xm zzm(xm xmVar) {
        return zzb(qr.zzGZ(), xmVar, this.zzciE);
    }
}
