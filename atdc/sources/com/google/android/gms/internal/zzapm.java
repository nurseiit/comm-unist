package com.google.android.gms.internal;

public final class zzapm {
    private zzaoz zzajE;
    private long zzajF = -1;
    private int zzajG = -1;
    private zzaow zzajH;
    private boolean zzajI = false;
    private int zzajJ = -1;
    private int zzajK = 0;

    public final zzapm zzM(boolean z) {
        this.zzajI = z;
        return this;
    }

    public final zzapm zzS(int i) {
        this.zzajG = i;
        return this;
    }

    public final zzapm zzT(int i) {
        this.zzajK = i;
        return this;
    }

    public final zzapm zza(zzaow zzaow) {
        this.zzajH = zzaow;
        return this;
    }

    public final zzapm zza(zzaoz zzaoz) {
        this.zzajE = zzaoz;
        return this;
    }

    public final zzapl zzmm() {
        return new zzapl(this.zzajE, this.zzajF, this.zzajG, null, this.zzajH, this.zzajI, this.zzajJ, this.zzajK);
    }

    public final zzapm zzv(long j) {
        this.zzajF = j;
        return this;
    }
}
