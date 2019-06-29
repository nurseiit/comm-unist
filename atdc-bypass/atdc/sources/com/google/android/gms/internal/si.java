package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

final class si {
    private Map<wp, si> zzceA = null;
    private xm zzcez = null;

    public final void zza(qr qrVar, sm smVar) {
        if (this.zzcez != null) {
            smVar.zzf(qrVar, this.zzcez);
            return;
        }
        sk skVar = new sk(this, qrVar, smVar);
        if (this.zzceA != null) {
            for (Entry entry : this.zzceA.entrySet()) {
                skVar.zza((wp) entry.getKey(), (si) entry.getValue());
            }
        }
    }

    public final void zzh(qr qrVar, xm xmVar) {
        si siVar = this;
        while (!qrVar.isEmpty()) {
            if (siVar.zzcez != null) {
                siVar.zzcez = siVar.zzcez.zzl(qrVar, xmVar);
                return;
            }
            if (siVar.zzceA == null) {
                siVar.zzceA = new HashMap();
            }
            wp zzHc = qrVar.zzHc();
            if (!siVar.zzceA.containsKey(zzHc)) {
                siVar.zzceA.put(zzHc, new si());
            }
            siVar = (si) siVar.zzceA.get(zzHc);
            qrVar = qrVar.zzHd();
        }
        siVar.zzcez = xmVar;
        siVar.zzceA = null;
    }

    public final boolean zzq(qr qrVar) {
        while (!qrVar.isEmpty()) {
            if (this.zzcez != null) {
                if (this.zzcez.zzIQ()) {
                    return false;
                }
                wr wrVar = (wr) this.zzcez;
                this.zzcez = null;
                wrVar.zza(new sj(this, qrVar), false);
            } else if (this.zzceA == null) {
                return true;
            } else {
                wp zzHc = qrVar.zzHc();
                qrVar = qrVar.zzHd();
                if (this.zzceA.containsKey(zzHc) && ((si) this.zzceA.get(zzHc)).zzq(qrVar)) {
                    this.zzceA.remove(zzHc);
                }
                if (!this.zzceA.isEmpty()) {
                    return false;
                }
                this.zzceA = null;
                return true;
            }
        }
        this.zzcez = null;
        this.zzceA = null;
        return true;
    }
}
