package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.Connections.EndpointDiscoveryListener;

final class zzcla extends zzclf<EndpointDiscoveryListener> {
    private /* synthetic */ zzcny zzbwS;

    zzcla(zzckz zzckz, zzcny zzcny) {
        this.zzbwS = zzcny;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((EndpointDiscoveryListener) obj).onEndpointFound(this.zzbwS.zzzJ(), this.zzbwS.getServiceId(), this.zzbwS.getEndpointName());
    }
}
