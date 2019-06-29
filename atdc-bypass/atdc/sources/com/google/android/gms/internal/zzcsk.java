package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.zzd;

final class zzcsk extends zzcru {
    private /* synthetic */ zzd zzbBZ;

    zzcsk(zzd zzd) {
        this.zzbBZ = zzd;
    }

    public final void zza(Status status, zzd zzd) {
        this.zzbBZ.setResult(new zzg(status, zzd));
    }
}
