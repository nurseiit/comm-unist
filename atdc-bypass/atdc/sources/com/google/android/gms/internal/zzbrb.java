package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbrb extends adj<zzbrb> {
    public long zzaPw;
    public long zzaPz;

    public zzbrb() {
        this.zzaPz = -1;
        this.zzaPw = -1;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbrb)) {
            return false;
        }
        zzbrb zzbrb = (zzbrb) obj;
        return (this.zzaPz == zzbrb.zzaPz && this.zzaPw == zzbrb.zzaPw) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbrb.zzcso == null || zzbrb.zzcso.isEmpty() : this.zzcso.equals(zzbrb.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzaPz ^ (this.zzaPz >>> 32)))) * 31) + ((int) (this.zzaPw ^ (this.zzaPw >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzd(1, this.zzaPz);
        adh.zzd(2, this.zzaPw);
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        return (super.zzn() + adh.zzf(1, this.zzaPz)) + adh.zzf(2, this.zzaPw);
    }
}
