package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;

final class zzclj extends zzcnj {
    private final zzbaz<Status> zzaVx;

    zzclj(zzbaz<Status> zzbaz) {
        this.zzaVx = (zzbaz) zzbo.zzu(zzbaz);
    }

    public final void zzbq(int i) {
        this.zzaVx.setResult(new Status(i));
    }
}
