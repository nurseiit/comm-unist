package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

final class sp implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ long zzcdX;
    private /* synthetic */ boolean zzceN;
    private /* synthetic */ xm zzceO;
    private /* synthetic */ xm zzceP;
    private /* synthetic */ boolean zzceQ;
    private /* synthetic */ so zzceR;

    sp(so soVar, boolean z, qr qrVar, xm xmVar, long j, xm xmVar2, boolean z2) {
        this.zzceR = soVar;
        this.zzceN = z;
        this.zzccH = qrVar;
        this.zzceO = xmVar;
        this.zzcdX = j;
        this.zzceP = xmVar2;
        this.zzceQ = z2;
    }

    public final /* synthetic */ Object call() throws Exception {
        if (this.zzceN) {
            this.zzceR.zzceF.zza(this.zzccH, this.zzceO, this.zzcdX);
        }
        this.zzceR.zzceH.zza(this.zzccH, this.zzceP, Long.valueOf(this.zzcdX), this.zzceQ);
        return !this.zzceQ ? Collections.emptyList() : this.zzceR.zza(new ub(tz.zzcfN, this.zzccH, this.zzceP));
    }
}
