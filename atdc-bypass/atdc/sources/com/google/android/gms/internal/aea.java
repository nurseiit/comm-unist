package com.google.android.gms.internal;

import java.io.IOException;

public final class aea extends adj<aea> {
    public String mimeType;
    public Integer zzcsJ;
    public byte[] zzctl;

    public aea() {
        this.zzcsJ = null;
        this.mimeType = null;
        this.zzctl = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcsJ != null) {
            adh.zzr(1, this.zzcsJ.intValue());
        }
        if (this.mimeType != null) {
            adh.zzl(2, this.mimeType);
        }
        if (this.zzctl != null) {
            adh.zzb(3, this.zzctl);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcsJ != null) {
            zzn += adh.zzs(1, this.zzcsJ.intValue());
        }
        if (this.mimeType != null) {
            zzn += adh.zzm(2, this.mimeType);
        }
        return this.zzctl != null ? zzn + adh.zzc(3, this.zzctl) : zzn;
    }
}
