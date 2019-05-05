package com.google.android.gms.internal;

import java.io.IOException;

public final class ady extends adj<ady> {
    private byte[] body;
    private adv[] zzctb;
    private byte[] zzctc;
    private Integer zzctd;
    private adz zzcth;
    private byte[] zzcti;

    public ady() {
        this.zzcth = null;
        this.zzctb = adv.zzLW();
        this.body = null;
        this.zzctc = null;
        this.zzctd = null;
        this.zzcti = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcth != null) {
            adh.zza(1, this.zzcth);
        }
        if (this.zzctb != null && this.zzctb.length > 0) {
            for (adp adp : this.zzctb) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        if (this.body != null) {
            adh.zzb(3, this.body);
        }
        if (this.zzctc != null) {
            adh.zzb(4, this.zzctc);
        }
        if (this.zzctd != null) {
            adh.zzr(5, this.zzctd.intValue());
        }
        if (this.zzcti != null) {
            adh.zzb(6, this.zzcti);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcth != null) {
            zzn += adh.zzb(1, this.zzcth);
        }
        if (this.zzctb != null && this.zzctb.length > 0) {
            for (adp adp : this.zzctb) {
                if (adp != null) {
                    zzn += adh.zzb(2, adp);
                }
            }
        }
        if (this.body != null) {
            zzn += adh.zzc(3, this.body);
        }
        if (this.zzctc != null) {
            zzn += adh.zzc(4, this.zzctc);
        }
        if (this.zzctd != null) {
            zzn += adh.zzs(5, this.zzctd.intValue());
        }
        return this.zzcti != null ? zzn + adh.zzc(6, this.zzcti) : zzn;
    }
}
