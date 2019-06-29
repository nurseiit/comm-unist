package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.connection.EndpointDiscoveryCallback;

final class zzckw extends zzcnb {
    private final zzbdw<EndpointDiscoveryCallback> zzbwL;

    zzckw(zzbdw<EndpointDiscoveryCallback> zzbdw) {
        this.zzbwL = (zzbdw) zzbo.zzu(zzbdw);
    }

    public final void zza(zzcny zzcny) {
        this.zzbwL.zza(new zzckx(this, zzcny));
    }

    public final void zza(zzcoa zzcoa) {
        this.zzbwL.zza(new zzcky(this, zzcoa));
    }

    public final void zza(zzcok zzcok) {
    }
}
