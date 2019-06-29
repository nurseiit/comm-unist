package com.google.android.gms.internal;

public final class th {
    private final long zzcfg;

    public th(long j) {
        this.zzcfg = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zzcfg == ((th) obj).zzcfg;
    }

    public final int hashCode() {
        return (int) (this.zzcfg ^ (this.zzcfg >>> 32));
    }

    public final String toString() {
        long j = this.zzcfg;
        StringBuilder stringBuilder = new StringBuilder(35);
        stringBuilder.append("Tag{tagNumber=");
        stringBuilder.append(j);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final long zzHs() {
        return this.zzcfg;
    }
}
