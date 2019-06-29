package com.google.android.gms.internal;

import java.util.Collections;

public final class ts {
    private final tp zzcfA;
    private final qr zzcfz;

    public ts(qr qrVar, tp tpVar) {
        this.zzcfz = qrVar;
        this.zzcfA = tpVar;
    }

    public final xl zza(xm xmVar, xl xlVar, boolean z, xe xeVar) {
        return this.zzcfA.zza(this.zzcfz, xmVar, xlVar, z, xeVar);
    }

    public final xm zza(qr qrVar, xm xmVar, xm xmVar2) {
        return this.zzcfA.zza(this.zzcfz, qrVar, xmVar, xmVar2);
    }

    public final xm zza(wp wpVar, vg vgVar) {
        return this.zzcfA.zza(this.zzcfz, wpVar, vgVar);
    }

    public final ts zzb(wp wpVar) {
        return new ts(this.zzcfz.zza(wpVar), this.zzcfA);
    }

    public final xm zzc(xm xmVar) {
        return this.zzcfA.zza(this.zzcfz, xmVar, Collections.emptyList(), false);
    }

    public final xm zzd(xm xmVar) {
        return this.zzcfA.zzj(this.zzcfz, xmVar);
    }

    public final xm zzu(qr qrVar) {
        return this.zzcfA.zzu(this.zzcfz.zzh(qrVar));
    }
}
