package com.google.android.gms.internal;

import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

final class sz implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ so zzceR;
    private /* synthetic */ Map zzceT;

    sz(so soVar, Map map, qr qrVar) {
        this.zzceR = soVar;
        this.zzceT = map;
        this.zzccH = qrVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        pz zzE = pz.zzE(this.zzceT);
        this.zzceR.zzceF.zzd(this.zzccH, zzE);
        return this.zzceR.zza(new tw(tz.zzcfO, this.zzccH, zzE));
    }
}
