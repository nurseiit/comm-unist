package com.google.android.gms.internal;

import com.google.android.gms.fitness.result.SessionStopResult;

final class zzbzh extends zzbxe {
    private final zzbaz<SessionStopResult> zzaIz;

    private zzbzh(zzbaz<SessionStopResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbzh(zzbaz zzbaz, zzbza zzbza) {
        this(zzbaz);
    }

    public final void zza(SessionStopResult sessionStopResult) {
        this.zzaIz.setResult(sessionStopResult);
    }
}
