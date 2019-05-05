package com.google.android.gms.internal;

import java.io.IOException;

public final class adz extends adj<adz> {
    private byte[] zzctg;
    private Integer zzctj;
    private byte[] zzctk;

    public adz() {
        this.zzctj = null;
        this.zzctk = null;
        this.zzctg = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzctj != null) {
            adh.zzr(1, this.zzctj.intValue());
        }
        if (this.zzctk != null) {
            adh.zzb(2, this.zzctk);
        }
        if (this.zzctg != null) {
            adh.zzb(3, this.zzctg);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzctj != null) {
            zzn += adh.zzs(1, this.zzctj.intValue());
        }
        if (this.zzctk != null) {
            zzn += adh.zzc(2, this.zzctk);
        }
        return this.zzctg != null ? zzn + adh.zzc(3, this.zzctg) : zzn;
    }
}
