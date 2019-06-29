package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class ta implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ so zzceR;

    ta(so soVar, qr qrVar) {
        this.zzceR = soVar;
        this.zzccH = qrVar;
    }

    public final /* synthetic */ Object call() throws Exception {
        this.zzceR.zzceF.zzi(vt.zzM(this.zzccH));
        return this.zzceR.zza(new tv(tz.zzcfO, this.zzccH));
    }
}
