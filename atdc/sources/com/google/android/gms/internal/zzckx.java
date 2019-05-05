package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.DiscoveredEndpointInfo;
import com.google.android.gms.nearby.connection.EndpointDiscoveryCallback;

final class zzckx extends zzclf<EndpointDiscoveryCallback> {
    private /* synthetic */ zzcny zzbwS;

    zzckx(zzckw zzckw, zzcny zzcny) {
        this.zzbwS = zzcny;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((EndpointDiscoveryCallback) obj).onEndpointFound(this.zzbwS.zzzJ(), new DiscoveredEndpointInfo(this.zzbwS.getServiceId(), this.zzbwS.getEndpointName()));
    }
}
