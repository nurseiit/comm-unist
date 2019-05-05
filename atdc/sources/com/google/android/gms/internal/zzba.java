package com.google.android.gms.internal;

import java.io.IOException;

public final class zzba extends adj<zzba> {
    private int[] zzcA;
    private Long zzcB;
    private Long zzcx;
    private Integer zzcy;
    private Boolean zzcz;

    public zzba() {
        this.zzcx = null;
        this.zzcy = null;
        this.zzcz = null;
        this.zzcA = ads.zzcsC;
        this.zzcB = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcx != null) {
            adh.zzb(1, this.zzcx.longValue());
        }
        if (this.zzcy != null) {
            adh.zzr(2, this.zzcy.intValue());
        }
        if (this.zzcz != null) {
            adh.zzk(3, this.zzcz.booleanValue());
        }
        if (this.zzcA != null && this.zzcA.length > 0) {
            for (int zzr : this.zzcA) {
                adh.zzr(4, zzr);
            }
        }
        if (this.zzcB != null) {
            adh.zza(5, this.zzcB.longValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcx != null) {
            zzn += adh.zze(1, this.zzcx.longValue());
        }
        if (this.zzcy != null) {
            zzn += adh.zzs(2, this.zzcy.intValue());
        }
        if (this.zzcz != null) {
            this.zzcz.booleanValue();
            zzn += adh.zzct(3) + 1;
        }
        if (this.zzcA != null && this.zzcA.length > 0) {
            int i = 0;
            for (int zzcr : this.zzcA) {
                i += adh.zzcr(zzcr);
            }
            zzn = (zzn + i) + (this.zzcA.length * 1);
        }
        if (this.zzcB == null) {
            return zzn;
        }
        return zzn + (adh.zzct(5) + adh.zzaP(this.zzcB.longValue()));
    }
}
