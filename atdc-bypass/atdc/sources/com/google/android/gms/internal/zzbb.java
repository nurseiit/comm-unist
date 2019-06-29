package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbb extends adj<zzbb> {
    public byte[] zzcC;
    public byte[] zzcD;

    public zzbb() {
        this.zzcC = null;
        this.zzcD = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcC != null) {
            adh.zzb(1, this.zzcC);
        }
        if (this.zzcD != null) {
            adh.zzb(2, this.zzcD);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcC != null) {
            zzn += adh.zzc(1, this.zzcC);
        }
        return this.zzcD != null ? zzn + adh.zzc(2, this.zzcD) : zzn;
    }
}
