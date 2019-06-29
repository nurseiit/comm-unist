package com.google.android.gms.internal;

import java.io.IOException;

public final class adx extends adj<adx> {
    private byte[] zzcte;
    private byte[] zzctf;
    private byte[] zzctg;

    public adx() {
        this.zzcte = null;
        this.zzctf = null;
        this.zzctg = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcte != null) {
            adh.zzb(1, this.zzcte);
        }
        if (this.zzctf != null) {
            adh.zzb(2, this.zzctf);
        }
        if (this.zzctg != null) {
            adh.zzb(3, this.zzctg);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcte != null) {
            zzn += adh.zzc(1, this.zzcte);
        }
        if (this.zzctf != null) {
            zzn += adh.zzc(2, this.zzctf);
        }
        return this.zzctg != null ? zzn + adh.zzc(3, this.zzctg) : zzn;
    }
}
