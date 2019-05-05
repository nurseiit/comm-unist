package com.google.android.gms.internal;

import java.io.IOException;

public final class zzau extends adj<zzau> {
    public zzav zzaQ;
    public zzaw zzaR;

    public zzau() {
        this.zzaQ = null;
        this.zzaR = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzaQ != null) {
            adh.zza(1, this.zzaQ);
        }
        if (this.zzaR != null) {
            adh.zza(2, this.zzaR);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzaQ != null) {
            zzn += adh.zzb(1, this.zzaQ);
        }
        return this.zzaR != null ? zzn + adh.zzb(2, this.zzaR) : zzn;
    }
}
