package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult;

final class zzcll extends zzcnm {
    private final zzbaz<StartAdvertisingResult> zzaVx;

    zzcll(zzbaz<StartAdvertisingResult> zzbaz) {
        this.zzaVx = (zzbaz) zzbo.zzu(zzbaz);
    }

    public final void zza(zzcog zzcog) {
        this.zzaVx.setResult(new zzclk(new Status(zzcog.getStatusCode()), zzcog.getLocalEndpointName()));
    }
}
