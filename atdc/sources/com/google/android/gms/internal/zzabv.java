package com.google.android.gms.internal;

import java.util.Map;

final class zzabv implements zzrd {
    private /* synthetic */ zzabu zzUR;

    zzabv(zzabu zzabu) {
        this.zzUR = zzabu;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        synchronized (this.zzUR.mLock) {
            if (this.zzUR.zzUM.isDone()) {
            } else if (this.zzUR.zzQx.equals(map.get("request_id"))) {
                zzaca zzaca = new zzaca(1, map);
                String valueOf = String.valueOf(zzaca.getType());
                String valueOf2 = String.valueOf(zzaca.zzgH());
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(valueOf2).length());
                stringBuilder.append("Invalid ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" request error: ");
                stringBuilder.append(valueOf2);
                zzajc.zzaT(stringBuilder.toString());
                this.zzUR.zzUM.zzg(zzaca);
            }
        }
    }
}
