package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

final class zzccn extends zzccv {
    private final zzbaz<Status> zzaIz;

    public zzccn(zzbaz<Status> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void zza(zzcco zzcco) {
        this.zzaIz.setResult(zzcco.getStatus());
    }
}
