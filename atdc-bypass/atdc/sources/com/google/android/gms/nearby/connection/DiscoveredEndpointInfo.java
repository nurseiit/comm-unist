package com.google.android.gms.nearby.connection;

public final class DiscoveredEndpointInfo {
    private final String zzbwo;
    private final String zzbwr;

    public DiscoveredEndpointInfo(String str, String str2) {
        this.zzbwr = str;
        this.zzbwo = str2;
    }

    public final String getEndpointName() {
        return this.zzbwo;
    }

    public final String getServiceId() {
        return this.zzbwr;
    }
}
