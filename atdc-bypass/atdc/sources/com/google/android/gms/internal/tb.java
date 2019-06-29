package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

final class tb implements Callable<List<? extends vk>> {
    private /* synthetic */ so zzceR;
    private /* synthetic */ th zzceS;

    tb(so soVar, th thVar) {
        this.zzceR = soVar;
        this.zzceS = thVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        vt zza = this.zzceR.zzb(this.zzceS);
        if (zza == null) {
            return Collections.emptyList();
        }
        this.zzceR.zzceF.zzi(zza);
        return this.zzceR.zza(zza, new tv(tz.zzc(zza.zzIu()), qr.zzGZ()));
    }
}
