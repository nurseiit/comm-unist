package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbc extends adj<zzbc> {
    public byte[] data;
    public byte[] zzcE;
    public byte[] zzcF;
    public byte[] zzcG;

    public zzbc() {
        this.data = null;
        this.zzcE = null;
        this.zzcF = null;
        this.zzcG = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.data != null) {
            adh.zzb(1, this.data);
        }
        if (this.zzcE != null) {
            adh.zzb(2, this.zzcE);
        }
        if (this.zzcF != null) {
            adh.zzb(3, this.zzcF);
        }
        if (this.zzcG != null) {
            adh.zzb(4, this.zzcG);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.data != null) {
            zzn += adh.zzc(1, this.data);
        }
        if (this.zzcE != null) {
            zzn += adh.zzc(2, this.zzcE);
        }
        if (this.zzcF != null) {
            zzn += adh.zzc(3, this.zzcF);
        }
        return this.zzcG != null ? zzn + adh.zzc(4, this.zzcG) : zzn;
    }
}
