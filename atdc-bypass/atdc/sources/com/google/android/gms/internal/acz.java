package com.google.android.gms.internal;

import java.io.IOException;

public final class acz extends adj<acz> {
    private int zzcqq;
    private long zzcqr;
    private int zzcrC;

    public acz() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcrC = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acz)) {
            return false;
        }
        acz acz = (acz) obj;
        return (this.zzcqq == acz.zzcqq && this.zzcqr == acz.zzcqr && this.zzcrC == acz.zzcrC) ? (this.zzcso == null || this.zzcso.isEmpty()) ? acz.zzcso == null || acz.zzcso.isEmpty() : this.zzcso.equals(acz.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + this.zzcrC) * 31;
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
        if (this.zzcrC != 0) {
            adh.zzr(3, this.zzcrC);
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
        return this.zzcrC != 0 ? zzn + adh.zzs(3, this.zzcrC) : zzn;
    }
}
