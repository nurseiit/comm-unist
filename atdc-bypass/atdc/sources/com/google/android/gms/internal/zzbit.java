package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.awareness.fence.zza;

public final class zzbit extends zzbjm {
    public static final zzet<zza, zzbit> zzaKT = new zzbiu();
    private final Handler mHandler;
    private final zza zzaKU;

    public final void zza(zzbjd zzbjd) {
        this.mHandler.post(new zzbiv(this.zzaKU, zzbjd));
    }

    @Deprecated
    public final void zza(zzbjh zzbjh) {
        zzeq.zza("ContextFenceListenerWrapper", "Unexpected call to deprecated method onFenceTriggered() with %s.", (Object) zzbjh);
        this.mHandler.post(new zzbiv(this.zzaKU, new zzbjd(zzbjh.zzaLi ? 2 : 1, 0, zzbjh.key, 0)));
    }
}
