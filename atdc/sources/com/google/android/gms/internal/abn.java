package com.google.android.gms.internal;

import java.io.IOException;

public final class abn extends adj<abn> {
    public int zzcnS;
    public boolean zzcnT;
    public long zzcnU;

    public abn() {
        this.zzcnS = 0;
        this.zzcnT = false;
        this.zzcnU = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof abn)) {
            return false;
        }
        abn abn = (abn) obj;
        return (this.zzcnS == abn.zzcnS && this.zzcnT == abn.zzcnT && this.zzcnU == abn.zzcnU) ? (this.zzcso == null || this.zzcso.isEmpty()) ? abn.zzcso == null || abn.zzcso.isEmpty() : this.zzcso.equals(abn.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzcnS) * 31) + (this.zzcnT ? 1231 : 1237)) * 31) + ((int) (this.zzcnU ^ (this.zzcnU >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcnS != 0) {
            adh.zzr(1, this.zzcnS);
        }
        if (this.zzcnT) {
            adh.zzk(2, this.zzcnT);
        }
        if (this.zzcnU != 0) {
            adh.zzc(3, this.zzcnU);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcnS != 0) {
            zzn += adh.zzs(1, this.zzcnS);
        }
        if (this.zzcnT) {
            zzn += adh.zzct(2) + 1;
        }
        return this.zzcnU != 0 ? zzn + (adh.zzct(3) + 8) : zzn;
    }
}
