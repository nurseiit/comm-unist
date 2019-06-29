package com.google.android.gms.internal;

import java.io.IOException;

public final class ach extends adj<ach> {
    public int zzcqq;
    public long zzcqr;
    public int[] zzcqs;

    public ach() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcqs = ads.zzcsC;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ach)) {
            return false;
        }
        ach ach = (ach) obj;
        return (this.zzcqq == ach.zzcqq && this.zzcqr == ach.zzcqr && adn.equals(this.zzcqs, ach.zzcqs)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? ach.zzcso == null || ach.zzcso.isEmpty() : this.zzcso.equals(ach.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + adn.hashCode(this.zzcqs)) * 31;
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
        if (this.zzcqs != null && this.zzcqs.length > 0) {
            for (int zzr : this.zzcqs) {
                adh.zzr(3, zzr);
            }
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
        if (this.zzcqs == null || this.zzcqs.length <= 0) {
            return zzn;
        }
        int i = 0;
        for (int zzcr : this.zzcqs) {
            i += adh.zzcr(zzcr);
        }
        return (zzn + i) + (this.zzcqs.length * 1);
    }
}
