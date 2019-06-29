package com.google.android.gms.internal;

public final class zzg implements zzx {
    private int zzn;
    private int zzo;
    private final int zzp;
    private final float zzq;

    public zzg() {
        this(2500, 1, 1.0f);
    }

    private zzg(int i, int i2, float f) {
        this.zzn = 2500;
        this.zzp = 1;
        this.zzq = 1.0f;
    }

    public final int zza() {
        return this.zzn;
    }

    public final void zza(zzaa zzaa) throws zzaa {
        int i = 1;
        this.zzo++;
        this.zzn = (int) (((float) this.zzn) + (((float) this.zzn) * this.zzq));
        if (this.zzo > this.zzp) {
            i = 0;
        }
        if (i == 0) {
            throw zzaa;
        }
    }

    public final int zzb() {
        return this.zzo;
    }
}
