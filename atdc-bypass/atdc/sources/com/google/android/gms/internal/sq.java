package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

final class sq implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ so zzceR;
    private /* synthetic */ th zzceS;
    private /* synthetic */ Map zzceT;

    sq(so soVar, th thVar, qr qrVar, Map map) {
        this.zzceR = soVar;
        this.zzceS = thVar;
        this.zzccH = qrVar;
        this.zzceT = map;
    }

    public final /* synthetic */ Object call() throws Exception {
        vt zza = this.zzceR.zzb(this.zzceS);
        if (zza == null) {
            return Collections.emptyList();
        }
        qr zza2 = qr.zza(zza.zzFq(), this.zzccH);
        pz zzE = pz.zzE(this.zzceT);
        this.zzceR.zzceF.zzd(this.zzccH, zzE);
        return this.zzceR.zza(zza, new tw(tz.zzc(zza.zzIu()), zza2, zzE));
    }
}
