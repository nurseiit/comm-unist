package com.google.android.gms.internal;

import java.io.IOException;

public final class ade extends adj<ade> {
    public int zzcqq;
    public int zzcrJ;

    public ade() {
        this.zzcqq = 0;
        this.zzcrJ = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ade)) {
            return false;
        }
        ade ade = (ade) obj;
        return (this.zzcqq == ade.zzcqq && this.zzcrJ == ade.zzcrJ) ? (this.zzcso == null || this.zzcso.isEmpty()) ? ade.zzcso == null || ade.zzcso.isEmpty() : this.zzcso.equals(ade.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + this.zzcrJ) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcrJ != 0) {
            adh.zzr(2, this.zzcrJ);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        return this.zzcrJ != 0 ? zzn + adh.zzs(2, this.zzcrJ) : zzn;
    }
}
