package com.google.android.gms.internal;

import java.io.IOException;

public final class add extends adj<add> {
    public long zzaTb;
    public int zzcqq;
    public String zzcrF;
    public long zzcrG;
    private acp zzcrH;
    public boolean zzcrI;

    public add() {
        this.zzcqq = 0;
        this.zzcrF = "";
        this.zzaTb = 0;
        this.zzcrG = 0;
        this.zzcrH = null;
        this.zzcrI = false;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof add)) {
            return false;
        }
        add add = (add) obj;
        if (this.zzcqq != add.zzcqq) {
            return false;
        }
        if (this.zzcrF == null) {
            if (add.zzcrF != null) {
                return false;
            }
        } else if (!this.zzcrF.equals(add.zzcrF)) {
            return false;
        }
        if (this.zzaTb != add.zzaTb || this.zzcrG != add.zzcrG) {
            return false;
        }
        if (this.zzcrH == null) {
            if (add.zzcrH != null) {
                return false;
            }
        } else if (!this.zzcrH.equals(add.zzcrH)) {
            return false;
        }
        return this.zzcrI != add.zzcrI ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? add.zzcso == null || add.zzcso.isEmpty() : this.zzcso.equals(add.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + (this.zzcrF == null ? 0 : this.zzcrF.hashCode())) * 31) + ((int) (this.zzaTb ^ (this.zzaTb >>> 32)))) * 31) + ((int) (this.zzcrG ^ (this.zzcrG >>> 32)))) * 31) + (this.zzcrH == null ? 0 : this.zzcrH.hashCode())) * 31) + (this.zzcrI ? 1231 : 1237)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (!(this.zzcrF == null || this.zzcrF.equals(""))) {
            adh.zzl(2, this.zzcrF);
        }
        if (this.zzaTb != 0) {
            adh.zzb(3, this.zzaTb);
        }
        if (this.zzcrG != 0) {
            adh.zzb(4, this.zzcrG);
        }
        if (this.zzcrH != null) {
            adh.zza(5, this.zzcrH);
        }
        if (this.zzcrI) {
            adh.zzk(6, this.zzcrI);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (!(this.zzcrF == null || this.zzcrF.equals(""))) {
            zzn += adh.zzm(2, this.zzcrF);
        }
        if (this.zzaTb != 0) {
            zzn += adh.zze(3, this.zzaTb);
        }
        if (this.zzcrG != 0) {
            zzn += adh.zze(4, this.zzcrG);
        }
        if (this.zzcrH != null) {
            zzn += adh.zzb(5, this.zzcrH);
        }
        return this.zzcrI ? zzn + (adh.zzct(6) + 1) : zzn;
    }
}
