package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.connection.ConnectionLifecycleCallback;
import com.google.android.gms.nearby.connection.ConnectionResolution;

final class zzckq extends zzclf<ConnectionLifecycleCallback> {
    private /* synthetic */ zzcnu zzbwN;

    zzckq(zzcko zzcko, zzcnu zzcnu) {
        this.zzbwN = zzcnu;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((ConnectionLifecycleCallback) obj).onConnectionResult(this.zzbwN.zzzF(), new ConnectionResolution(new Status(this.zzbwN.getStatusCode())));
    }
}
