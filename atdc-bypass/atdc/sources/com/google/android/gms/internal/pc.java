package com.google.android.gms.internal;

final class pc {
    private final Long zzcbA;
    private final pf zzcbx;
    private final pa zzcby;
    private final om zzcbz;

    private pc(pf pfVar, pa paVar, Long l, om omVar) {
        this.zzcbx = pfVar;
        this.zzcby = paVar;
        this.zzcbz = omVar;
        this.zzcbA = l;
    }

    /* synthetic */ pc(pf pfVar, pa paVar, Long l, om omVar, oq oqVar) {
        this(pfVar, paVar, l, omVar);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzcby.toString());
        String valueOf2 = String.valueOf(this.zzcbA);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 8) + String.valueOf(valueOf2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(" (Tag: ");
        stringBuilder.append(valueOf2);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final pa zzGm() {
        return this.zzcby;
    }

    public final Long zzGn() {
        return this.zzcbA;
    }

    public final om zzGo() {
        return this.zzcbz;
    }
}
