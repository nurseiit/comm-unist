package com.google.android.gms.internal;

import java.io.IOException;

public final class adf extends adj<adf> {
    private int zzcqq;
    private long zzcqr;
    private float zzcrK;
    private int zzcrL;

    public adf() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcrK = 0.0f;
        this.zzcrL = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adf)) {
            return false;
        }
        adf adf = (adf) obj;
        return (this.zzcqq == adf.zzcqq && this.zzcqr == adf.zzcqr && Float.floatToIntBits(this.zzcrK) == Float.floatToIntBits(adf.zzcrK) && this.zzcrL == adf.zzcrL) ? (this.zzcso == null || this.zzcso.isEmpty()) ? adf.zzcso == null || adf.zzcso.isEmpty() : this.zzcso.equals(adf.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + Float.floatToIntBits(this.zzcrK)) * 31) + this.zzcrL) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            adh.zzb(2, this.zzcqr);
        }
        if (Float.floatToIntBits(this.zzcrK) != Float.floatToIntBits(0.0f)) {
            adh.zzc(3, this.zzcrK);
        }
        if (this.zzcrL != 0) {
            adh.zzr(4, this.zzcrL);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            zzn += adh.zze(2, this.zzcqr);
        }
        if (Float.floatToIntBits(this.zzcrK) != Float.floatToIntBits(0.0f)) {
            zzn += adh.zzct(3) + 4;
        }
        return this.zzcrL != 0 ? zzn + adh.zzs(4, this.zzcrL) : zzn;
    }
}
