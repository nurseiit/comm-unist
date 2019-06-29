package com.google.android.gms.internal;

import java.io.IOException;

public final class aec extends adj<aec> {
    public String zzctu;
    public Long zzctv;

    public aec() {
        this.zzctu = null;
        this.zzctv = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzctu != null) {
            adh.zzl(1, this.zzctu);
        }
        if (this.zzctv != null) {
            adh.zzb(2, this.zzctv.longValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzctu != null) {
            zzn += adh.zzm(1, this.zzctu);
        }
        return this.zzctv != null ? zzn + adh.zze(2, this.zzctv.longValue()) : zzn;
    }
}
