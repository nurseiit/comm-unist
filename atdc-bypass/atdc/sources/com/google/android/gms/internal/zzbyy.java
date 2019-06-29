package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

final class zzbyy extends zzbxh {
    private final zzbaz<Status> zzaIz;
    private final zzbyx zzaWb;

    private zzbyy(zzbaz<Status> zzbaz, zzbyx zzbyx) {
        this.zzaIz = zzbaz;
        this.zzaWb = zzbyx;
    }

    /* synthetic */ zzbyy(zzbaz zzbaz, zzbyx zzbyx, zzbyt zzbyt) {
        this(zzbaz, zzbyx);
    }

    public final void zzu(Status status) {
        if (this.zzaWb != null && status.isSuccess()) {
            this.zzaWb.zztS();
        }
        this.zzaIz.setResult(status);
    }
}
