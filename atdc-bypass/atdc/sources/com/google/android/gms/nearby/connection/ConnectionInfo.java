package com.google.android.gms.nearby.connection;

public final class ConnectionInfo {
    private final String zzbwo;
    private final String zzbwp;
    private final boolean zzbwq;

    public ConnectionInfo(String str, String str2, boolean z) {
        this.zzbwo = str;
        this.zzbwp = str2;
        this.zzbwq = z;
    }

    public final String getAuthenticationToken() {
        return this.zzbwp;
    }

    public final String getEndpointName() {
        return this.zzbwo;
    }

    public final boolean isIncomingConnection() {
        return this.zzbwq;
    }
}
