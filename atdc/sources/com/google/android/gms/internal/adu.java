package com.google.android.gms.internal;

import java.io.IOException;

public final class adu extends adj<adu> {
    public String zzXr;

    public adu() {
        this.zzXr = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzXr != null) {
            adh.zzl(1, this.zzXr);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        return this.zzXr != null ? zzn + adh.zzm(1, this.zzXr) : zzn;
    }
}
