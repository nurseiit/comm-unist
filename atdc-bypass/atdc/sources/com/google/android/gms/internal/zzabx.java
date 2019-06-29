package com.google.android.gms.internal;

import java.util.Map;

final class zzabx implements zzrd {
    private /* synthetic */ zzabu zzUR;

    zzabx(zzabu zzabu) {
        this.zzUR = zzabu;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        synchronized (this.zzUR.mLock) {
            if (this.zzUR.zzUM.isDone()) {
                return;
            }
            zzaca zzaca = new zzaca(-2, map);
            if (this.zzUR.zzQx.equals(zzaca.getRequestId())) {
                this.zzUR.zzUM.zzg(zzaca);
                return;
            }
        }
    }
}
