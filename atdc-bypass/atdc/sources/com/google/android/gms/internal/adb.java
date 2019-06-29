package com.google.android.gms.internal;

import java.io.IOException;

public final class adb extends adj<adb> {
    public int zzcqq;
    public long zzcrD;
    public long zzcrE;

    public adb() {
        this.zzcqq = 0;
        this.zzcrD = 0;
        this.zzcrE = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adb)) {
            return false;
        }
        adb adb = (adb) obj;
        return (this.zzcqq == adb.zzcqq && this.zzcrD == adb.zzcrD && this.zzcrE == adb.zzcrE) ? (this.zzcso == null || this.zzcso.isEmpty()) ? adb.zzcso == null || adb.zzcso.isEmpty() : this.zzcso.equals(adb.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcrD ^ (this.zzcrD >>> 32)))) * 31) + ((int) (this.zzcrE ^ (this.zzcrE >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcrD != 0) {
            adh.zzb(3, this.zzcrD);
        }
        if (this.zzcrE != 0) {
            adh.zzb(4, this.zzcrE);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (this.zzcrD != 0) {
            zzn += adh.zze(3, this.zzcrD);
        }
        return this.zzcrE != 0 ? zzn + adh.zze(4, this.zzcrE) : zzn;
    }
}
