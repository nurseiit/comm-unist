package com.google.android.gms.internal;

public final class rx {
    public String host;
    public boolean secure;
    public String zzbxU;
    public String zzceq;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        rx rxVar = (rx) obj;
        return (this.secure == rxVar.secure && this.host.equals(rxVar.host)) ? this.zzbxU.equals(rxVar.zzbxU) : false;
    }

    public final int hashCode() {
        return (((this.host.hashCode() * 31) + this.secure) * 31) + this.zzbxU.hashCode();
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
