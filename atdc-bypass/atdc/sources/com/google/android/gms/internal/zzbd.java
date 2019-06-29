package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbd extends adj<zzbd> {
    private String zzcH;
    private byte[] zzcI;
    public Long zzcx;

    public zzbd() {
        this.zzcx = null;
        this.zzcH = null;
        this.zzcI = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcx != null) {
            adh.zzb(1, this.zzcx.longValue());
        }
        if (this.zzcH != null) {
            adh.zzl(3, this.zzcH);
        }
        if (this.zzcI != null) {
            adh.zzb(4, this.zzcI);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcx != null) {
            zzn += adh.zze(1, this.zzcx.longValue());
        }
        if (this.zzcH != null) {
            zzn += adh.zzm(3, this.zzcH);
        }
        return this.zzcI != null ? zzn + adh.zzc(4, this.zzcI) : zzn;
    }
}
