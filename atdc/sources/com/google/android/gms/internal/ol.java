package com.google.android.gms.internal;

public final class ol {
    private final String host;
    private final boolean secure;
    private final String zzbxU;

    public ol(String str, String str2, boolean z) {
        this.host = str;
        this.zzbxU = str2;
        this.secure = z;
    }

    public final String getHost() {
        return this.host;
    }

    public final String getNamespace() {
        return this.zzbxU;
    }

    public final boolean isSecure() {
        return this.secure;
    }

    public final String toString() {
        Object obj = this.secure ? "s" : "";
        String str = this.host;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(obj).length() + 7) + String.valueOf(str).length());
        stringBuilder.append("http");
        stringBuilder.append(obj);
        stringBuilder.append("://");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }
}
