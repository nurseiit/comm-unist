package com.google.android.gms.internal;

import java.io.IOException;

public final class adv extends adj<adv> {
    private static volatile adv[] zzcsY;
    public byte[] zzcnR;
    public byte[] zzcsZ;

    public adv() {
        this.zzcsZ = null;
        this.zzcnR = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static adv[] zzLW() {
        if (zzcsY == null) {
            synchronized (adn.zzcsw) {
                if (zzcsY == null) {
                    zzcsY = new adv[0];
                }
            }
        }
        return zzcsY;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzb(1, this.zzcsZ);
        if (this.zzcnR != null) {
            adh.zzb(2, this.zzcnR);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn() + adh.zzc(1, this.zzcsZ);
        return this.zzcnR != null ? zzn + adh.zzc(2, this.zzcnR) : zzn;
    }
}
