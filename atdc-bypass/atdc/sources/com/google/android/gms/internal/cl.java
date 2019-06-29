package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class cl {
    private bz zzbKF;

    public final String getId() {
        return this.zzbKF == null ? "" : this.zzbKF.getContainerId();
    }

    public final bz zzCP() {
        return this.zzbKF;
    }

    public final cl zza(bz bzVar) throws IllegalArgumentException {
        zzbo.zzu(bzVar);
        this.zzbKF = bzVar;
        return this;
    }
}
