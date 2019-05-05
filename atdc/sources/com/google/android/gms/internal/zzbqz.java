package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbqz extends adj<zzbqz> {
    public long sequenceNumber;
    public int versionCode;
    public long zzaPw;
    public long zzaPx;

    public zzbqz() {
        this.versionCode = 1;
        this.sequenceNumber = -1;
        this.zzaPw = -1;
        this.zzaPx = -1;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbqz)) {
            return false;
        }
        zzbqz zzbqz = (zzbqz) obj;
        return (this.versionCode == zzbqz.versionCode && this.sequenceNumber == zzbqz.sequenceNumber && this.zzaPw == zzbqz.zzaPw && this.zzaPx == zzbqz.zzaPx) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbqz.zzcso == null || zzbqz.zzcso.isEmpty() : this.zzcso.equals(zzbqz.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + this.versionCode) * 31) + ((int) (this.sequenceNumber ^ (this.sequenceNumber >>> 32)))) * 31) + ((int) (this.zzaPw ^ (this.zzaPw >>> 32)))) * 31) + ((int) (this.zzaPx ^ (this.zzaPx >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.versionCode);
        adh.zzd(2, this.sequenceNumber);
        adh.zzd(3, this.zzaPw);
        adh.zzd(4, this.zzaPx);
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        return (((super.zzn() + adh.zzs(1, this.versionCode)) + adh.zzf(2, this.sequenceNumber)) + adh.zzf(3, this.zzaPw)) + adh.zzf(4, this.zzaPx);
    }
}
