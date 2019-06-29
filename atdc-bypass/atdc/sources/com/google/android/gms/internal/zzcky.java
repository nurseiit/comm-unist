package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.EndpointDiscoveryCallback;

final class zzcky extends zzclf<EndpointDiscoveryCallback> {
    private /* synthetic */ zzcoa zzbwT;

    zzcky(zzckw zzckw, zzcoa zzcoa) {
        this.zzbwT = zzcoa;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((EndpointDiscoveryCallback) obj).onEndpointLost(this.zzbwT.zzzJ());
    }
}
