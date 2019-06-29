package com.google.android.gms.nearby.connection;

import com.google.android.gms.common.api.Status;

public final class ConnectionResolution {
    private final Status zzajl;

    public ConnectionResolution(Status status) {
        this.zzajl = status;
    }

    public final Status getStatus() {
        return this.zzajl;
    }
}
