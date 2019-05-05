package com.google.android.gms.internal;

public final class uf implements uc {
    private long zzcgb;

    public uf(long j) {
        this.zzcgb = j;
    }

    public final float zzHK() {
        return 0.2f;
    }

    public final long zzHL() {
        return 1000;
    }

    public final boolean zzax(long j) {
        return j > 1000;
    }

    public final boolean zzi(long j, long j2) {
        return j > this.zzcgb || j2 > 1000;
    }
}
