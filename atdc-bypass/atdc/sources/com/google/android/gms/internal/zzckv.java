package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.connection.Connections.ConnectionResponseCallback;

final class zzckv extends zzclf<ConnectionResponseCallback> {
    private /* synthetic */ zzcns zzbwR;

    zzckv(zzcku zzcku, zzcns zzcns) {
        this.zzbwR = zzcns;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((ConnectionResponseCallback) obj).onConnectionResponse(this.zzbwR.zzzF(), new Status(this.zzbwR.getStatusCode()), this.zzbwR.zzzI());
    }
}
