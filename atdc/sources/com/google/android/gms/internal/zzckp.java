package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.ConnectionInfo;
import com.google.android.gms.nearby.connection.ConnectionLifecycleCallback;

final class zzckp extends zzclf<ConnectionLifecycleCallback> {
    private /* synthetic */ zzcno zzbwM;

    zzckp(zzcko zzcko, zzcno zzcno) {
        this.zzbwM = zzcno;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((ConnectionLifecycleCallback) obj).onConnectionInitiated(this.zzbwM.zzzF(), new ConnectionInfo(this.zzbwM.zzzG(), this.zzbwM.getAuthenticationToken(), this.zzbwM.zzzH()));
    }
}
