package com.google.android.gms.internal;

public final class zzadr {
    private int mErrorCode;
    private String zzMs;
    private String zzWJ;
    private long zzWK;

    public final zzadr zzax(String str) {
        this.zzMs = str;
        return this;
    }

    public final zzadr zzay(String str) {
        this.zzWJ = str;
        return this;
    }

    public final zzadr zzg(long j) {
        this.zzWK = j;
        return this;
    }

    public final zzadp zzgU() {
        return new zzadp(this, null);
    }

    public final zzadr zzw(int i) {
        this.mErrorCode = i;
        return this;
    }
}
