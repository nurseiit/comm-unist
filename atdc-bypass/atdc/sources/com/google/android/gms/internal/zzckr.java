package com.google.android.gms.internal;

import com.google.android.gms.nearby.connection.ConnectionLifecycleCallback;

final class zzckr extends zzclf<ConnectionLifecycleCallback> {
    private /* synthetic */ zzcnw zzbwO;

    zzckr(zzcko zzcko, zzcnw zzcnw) {
        this.zzbwO = zzcnw;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((ConnectionLifecycleCallback) obj).onDisconnected(this.zzbwO.zzzF());
    }
}
