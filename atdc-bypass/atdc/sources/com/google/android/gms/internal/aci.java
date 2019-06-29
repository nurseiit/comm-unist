package com.google.android.gms.internal;

import java.io.IOException;

public final class aci extends adj<aci> {
    public int zzcqq;
    public long zzcqr;
    public int zzcqt;
    public int zzcqu;
    public int zzcqv;
    public int zzcqw;
    public int zzcqx;
    public int zzcqy;

    public aci() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcqt = 0;
        this.zzcqu = 0;
        this.zzcqv = 0;
        this.zzcqw = 0;
        this.zzcqx = 0;
        this.zzcqy = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aci)) {
            return false;
        }
        aci aci = (aci) obj;
        return (this.zzcqq == aci.zzcqq && this.zzcqr == aci.zzcqr && this.zzcqt == aci.zzcqt && this.zzcqu == aci.zzcqu && this.zzcqv == aci.zzcqv && this.zzcqw == aci.zzcqw && this.zzcqx == aci.zzcqx && this.zzcqy == aci.zzcqy) ? (this.zzcso == null || this.zzcso.isEmpty()) ? aci.zzcso == null || aci.zzcso.isEmpty() : this.zzcso.equals(aci.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + this.zzcqt) * 31) + this.zzcqu) * 31) + this.zzcqv) * 31) + this.zzcqw) * 31) + this.zzcqx) * 31) + this.zzcqy) * 31;
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
        if (this.zzcqt != 0) {
            adh.zzr(3, this.zzcqt);
        }
        if (this.zzcqu != 0) {
            adh.zzr(4, this.zzcqu);
        }
        if (this.zzcqv != 0) {
            adh.zzr(5, this.zzcqv);
        }
        if (this.zzcqw != 0) {
            adh.zzr(6, this.zzcqw);
        }
        if (this.zzcqx != 0) {
            adh.zzr(7, this.zzcqx);
        }
        if (this.zzcqy != 0) {
            adh.zzr(8, this.zzcqy);
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
        if (this.zzcqt != 0) {
            zzn += adh.zzs(3, this.zzcqt);
        }
        if (this.zzcqu != 0) {
            zzn += adh.zzs(4, this.zzcqu);
        }
        if (this.zzcqv != 0) {
            zzn += adh.zzs(5, this.zzcqv);
        }
        if (this.zzcqw != 0) {
            zzn += adh.zzs(6, this.zzcqw);
        }
        if (this.zzcqx != 0) {
            zzn += adh.zzs(7, this.zzcqx);
        }
        return this.zzcqy != 0 ? zzn + adh.zzs(8, this.zzcqy) : zzn;
    }
}
