package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbe extends adj<zzbe> {
    public byte[] zzcE;
    public byte[][] zzcJ;
    private Integer zzcK;
    private Integer zzcL;

    public zzbe() {
        this.zzcJ = ads.zzcsH;
        this.zzcE = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcJ != null && this.zzcJ.length > 0) {
            for (byte[] bArr : this.zzcJ) {
                if (bArr != null) {
                    adh.zzb(1, bArr);
                }
            }
        }
        if (this.zzcE != null) {
            adh.zzb(2, this.zzcE);
        }
        if (this.zzcK != null) {
            adh.zzr(3, this.zzcK.intValue());
        }
        if (this.zzcL != null) {
            adh.zzr(4, this.zzcL.intValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcJ != null && this.zzcJ.length > 0) {
            int i = 0;
            int i2 = 0;
            for (byte[] bArr : this.zzcJ) {
                if (bArr != null) {
                    i2++;
                    i += adh.zzJ(bArr);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzcE != null) {
            zzn += adh.zzc(2, this.zzcE);
        }
        if (this.zzcK != null) {
            zzn += adh.zzs(3, this.zzcK.intValue());
        }
        return this.zzcL != null ? zzn + adh.zzs(4, this.zzcL.intValue()) : zzn;
    }
}
