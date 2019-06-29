package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class sv implements Callable<List<? extends vk>> {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ long zzcdX;
    private /* synthetic */ boolean zzceN;
    private /* synthetic */ so zzceR;
    private /* synthetic */ pz zzceZ;
    private /* synthetic */ pz zzcfa;

    sv(so soVar, boolean z, qr qrVar, pz pzVar, long j, pz pzVar2) {
        this.zzceR = soVar;
        this.zzceN = z;
        this.zzccH = qrVar;
        this.zzceZ = pzVar;
        this.zzcdX = j;
        this.zzcfa = pzVar2;
    }

    public final /* synthetic */ Object call() throws Exception {
        if (this.zzceN) {
            this.zzceR.zzceF.zza(this.zzccH, this.zzceZ, this.zzcdX);
        }
        this.zzceR.zzceH.zza(this.zzccH, this.zzcfa, Long.valueOf(this.zzcdX));
        return this.zzceR.zza(new tw(tz.zzcfN, this.zzccH, this.zzcfa));
    }
}
