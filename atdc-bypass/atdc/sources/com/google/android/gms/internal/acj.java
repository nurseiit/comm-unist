package com.google.android.gms.internal;

import java.io.IOException;

public final class acj extends adj<acj> {
    public int zzcqq;
    public long zzcqr;
    public ack[] zzcqz;

    public acj() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcqz = ack.zzLo();
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acj)) {
            return false;
        }
        acj acj = (acj) obj;
        return (this.zzcqq == acj.zzcqq && this.zzcqr == acj.zzcqr && adn.equals(this.zzcqz, acj.zzcqz)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? acj.zzcso == null || acj.zzcso.isEmpty() : this.zzcso.equals(acj.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + adn.hashCode(this.zzcqz)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            adh.zzb(3, this.zzcqr);
        }
        if (this.zzcqz != null && this.zzcqz.length > 0) {
            for (adp adp : this.zzcqz) {
                if (adp != null) {
                    adh.zza(4, adp);
                }
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
            zzn += adh.zze(3, this.zzcqr);
        }
        if (this.zzcqz != null && this.zzcqz.length > 0) {
            for (adp adp : this.zzcqz) {
                if (adp != null) {
                    zzn += adh.zzb(4, adp);
                }
            }
        }
        return zzn;
    }
}
