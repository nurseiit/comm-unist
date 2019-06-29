package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.Connections.EndpointDiscoveryListener;

final class zzclb extends zzclf<EndpointDiscoveryListener> {
    private /* synthetic */ zzcoa zzbwT;

    zzclb(zzckz zzckz, zzcoa zzcoa) {
        this.zzbwT = zzcoa;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((EndpointDiscoveryListener) obj).onEndpointLost(this.zzbwT.zzzJ());
    }
}
