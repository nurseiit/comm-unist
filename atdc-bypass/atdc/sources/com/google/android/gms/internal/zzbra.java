package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbra extends adj<zzbra> {
    public int versionCode;
    public int zzaPA;
    public long zzaPw;
    public String zzaPy;
    public long zzaPz;

    public zzbra() {
        this.versionCode = 1;
        this.zzaPy = "";
        this.zzaPz = -1;
        this.zzaPw = -1;
        this.zzaPA = -1;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbra)) {
            return false;
        }
        zzbra zzbra = (zzbra) obj;
        if (this.versionCode != zzbra.versionCode) {
            return false;
        }
        if (this.zzaPy == null) {
            if (zzbra.zzaPy != null) {
                return false;
            }
        } else if (!this.zzaPy.equals(zzbra.zzaPy)) {
            return false;
        }
        return (this.zzaPz == zzbra.zzaPz && this.zzaPw == zzbra.zzaPw && this.zzaPA == zzbra.zzaPA) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbra.zzcso == null || zzbra.zzcso.isEmpty() : this.zzcso.equals(zzbra.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + this.versionCode) * 31) + (this.zzaPy == null ? 0 : this.zzaPy.hashCode())) * 31) + ((int) (this.zzaPz ^ (this.zzaPz >>> 32)))) * 31) + ((int) (this.zzaPw ^ (this.zzaPw >>> 32)))) * 31) + this.zzaPA) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.versionCode);
        adh.zzl(2, this.zzaPy);
        adh.zzd(3, this.zzaPz);
        adh.zzd(4, this.zzaPw);
        if (this.zzaPA != -1) {
            adh.zzr(5, this.zzaPA);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = (((super.zzn() + adh.zzs(1, this.versionCode)) + adh.zzm(2, this.zzaPy)) + adh.zzf(3, this.zzaPz)) + adh.zzf(4, this.zzaPw);
        return this.zzaPA != -1 ? zzn + adh.zzs(5, this.zzaPA) : zzn;
    }
}
