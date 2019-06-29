package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult;

final class zzclk implements StartAdvertisingResult {
    private final Status zzajl;
    private final String zzbwY;

    zzclk(Status status, String str) {
        this.zzajl = status;
        this.zzbwY = str;
    }

    public final String getLocalEndpointName() {
        return this.zzbwY;
    }

    public final Status getStatus() {
        return this.zzajl;
    }
}
