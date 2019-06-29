package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult;

final class zzcmi implements StartAdvertisingResult {
    private /* synthetic */ Status zzakB;

    zzcmi(zzcmh zzcmh, Status status) {
        this.zzakB = status;
    }

    public final String getLocalEndpointName() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
