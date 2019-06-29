package com.google.android.gms.internal;

import java.io.IOException;

public final class zzaz extends adj<zzaz> {
    private Long zzbM;
    private Long zzbN;
    public Long zzcu;
    public Long zzcv;
    public Long zzcw;

    public zzaz() {
        this.zzbM = null;
        this.zzbN = null;
        this.zzcu = null;
        this.zzcv = null;
        this.zzcw = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbM != null) {
            adh.zzb(1, this.zzbM.longValue());
        }
        if (this.zzbN != null) {
            adh.zzb(2, this.zzbN.longValue());
        }
        if (this.zzcu != null) {
            adh.zzb(3, this.zzcu.longValue());
        }
        if (this.zzcv != null) {
            adh.zzb(4, this.zzcv.longValue());
        }
        if (this.zzcw != null) {
            adh.zzb(5, this.zzcw.longValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbM != null) {
            zzn += adh.zze(1, this.zzbM.longValue());
        }
        if (this.zzbN != null) {
            zzn += adh.zze(2, this.zzbN.longValue());
        }
        if (this.zzcu != null) {
            zzn += adh.zze(3, this.zzcu.longValue());
        }
        if (this.zzcv != null) {
            zzn += adh.zze(4, this.zzcv.longValue());
        }
        return this.zzcw != null ? zzn + adh.zze(5, this.zzcw.longValue()) : zzn;
    }
}
