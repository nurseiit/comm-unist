package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class sy implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ xm zzceP;
    private /* synthetic */ so zzceR;

    sy(so soVar, qr qrVar, xm xmVar) {
        this.zzceR = soVar;
        this.zzccH = qrVar;
        this.zzceP = xmVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzceR.zzceF.zza(vt.zzM(this.zzccH), this.zzceP);
        return this.zzceR.zza(new ub(tz.zzcfO, this.zzccH, this.zzceP));
    }
}
