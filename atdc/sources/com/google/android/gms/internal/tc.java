package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

final class tc implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ so zzceR;
    private /* synthetic */ th zzceS;
    private /* synthetic */ xm zzcfd;

    tc(so soVar, th thVar, qr qrVar, xm xmVar) {
        this.zzceR = soVar;
        this.zzceS = thVar;
        this.zzccH = qrVar;
        this.zzcfd = xmVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        vt zza = this.zzceR.zzb(this.zzceS);
        if (zza == null) {
            return Collections.emptyList();
        }
        qr zza2 = qr.zza(zza.zzFq(), this.zzccH);
        this.zzceR.zzceF.zza(zza2.isEmpty() ? zza : vt.zzM(this.zzccH), this.zzcfd);
        return this.zzceR.zza(zza, new ub(tz.zzc(zza.zzIu()), zza2, this.zzcfd));
    }
}
