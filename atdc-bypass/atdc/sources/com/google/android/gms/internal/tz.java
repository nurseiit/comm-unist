package com.google.android.gms.internal;

public final class tz {
    public static final tz zzcfN = new tz(ua.User, null, false);
    public static final tz zzcfO = new tz(ua.Server, null, false);
    private final ua zzcfP;
    private final vq zzcfQ;
    private final boolean zzcfR;

    private tz(ua uaVar, vq vqVar, boolean z) {
        this.zzcfP = uaVar;
        this.zzcfQ = vqVar;
        this.zzcfR = z;
    }

    public static tz zzc(vq vqVar) {
        return new tz(ua.Server, vqVar, true);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzcfP);
        String valueOf2 = String.valueOf(this.zzcfQ);
        boolean z = this.zzcfR;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 52) + String.valueOf(valueOf2).length());
        stringBuilder.append("OperationSource{source=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", queryParams=");
        stringBuilder.append(valueOf2);
        stringBuilder.append(", tagged=");
        stringBuilder.append(z);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final boolean zzHG() {
        return this.zzcfP == ua.User;
    }

    public final boolean zzHH() {
        return this.zzcfR;
    }

    public final vq zzHI() {
        return this.zzcfQ;
    }
}
