package com.google.android.gms.internal;

import java.util.Map;

final class sg extends wu {
    private /* synthetic */ Map zzcew;
    private /* synthetic */ sh zzcex;

    sg(Map map, sh shVar) {
        this.zzcew = map;
        this.zzcex = shVar;
    }

    public final void zzb(wp wpVar, xm xmVar) {
        xm zza = se.zza(xmVar, this.zzcew);
        if (zza != xmVar) {
            this.zzcex.zzg(new qr(wpVar.asString()), zza);
        }
    }
}
