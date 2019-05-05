package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzbjs {
    private final ade zzaLn;

    private zzbjs(ade ade) {
        this.zzaLn = (ade) zzbo.zzu(ade);
    }

    public static zzbjs zzj(int i, int i2) {
        zzbo.zzaf(true);
        ade ade = new ade();
        ade.zzcqq = 1;
        ade.zzcrJ = i2;
        return new zzbjs(ade);
    }

    public final ade zzsJ() {
        return this.zzaLn;
    }
}
