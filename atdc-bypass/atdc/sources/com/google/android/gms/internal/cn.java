package com.google.android.gms.internal;

public final class cn {
    private final db zzbII;
    private final byte[] zzbKI;
    private final long zzbKJ;
    private final bz zzbKK;

    public cn(bz bzVar, byte[] bArr, db dbVar, long j) {
        this.zzbKK = bzVar;
        this.zzbKI = bArr;
        this.zzbII = dbVar;
        this.zzbKJ = j;
    }

    public cn(db dbVar) {
        this(null, null, dbVar, 0);
    }

    public final byte[] zzCT() {
        return this.zzbKI;
    }

    public final bz zzCU() {
        return this.zzbKK;
    }

    public final db zzCV() {
        return this.zzbII;
    }

    public final long zzCW() {
        return this.zzbKJ;
    }
}
