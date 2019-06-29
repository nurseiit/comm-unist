package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbk extends adj<zzbk> {
    private static volatile zzbk[] zzkE;
    public String key;
    public long zzkF;
    public long zzkG;
    public boolean zzkH;
    public long zzkI;

    public zzbk() {
        this.key = "";
        this.zzkF = 0;
        this.zzkG = 2147483647L;
        this.zzkH = false;
        this.zzkI = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbk[] zzq() {
        if (zzkE == null) {
            synchronized (adn.zzcsw) {
                if (zzkE == null) {
                    zzkE = new zzbk[0];
                }
            }
        }
        return zzkE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbk)) {
            return false;
        }
        zzbk zzbk = (zzbk) obj;
        if (this.key == null) {
            if (zzbk.key != null) {
                return false;
            }
        } else if (!this.key.equals(zzbk.key)) {
            return false;
        }
        return (this.zzkF == zzbk.zzkF && this.zzkG == zzbk.zzkG && this.zzkH == zzbk.zzkH && this.zzkI == zzbk.zzkI) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbk.zzcso == null || zzbk.zzcso.isEmpty() : this.zzcso.equals(zzbk.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.key == null ? 0 : this.key.hashCode())) * 31) + ((int) (this.zzkF ^ (this.zzkF >>> 32)))) * 31) + ((int) (this.zzkG ^ (this.zzkG >>> 32)))) * 31) + (this.zzkH ? 1231 : 1237)) * 31) + ((int) (this.zzkI ^ (this.zzkI >>> 32)))) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.key == null || this.key.equals(""))) {
            adh.zzl(1, this.key);
        }
        if (this.zzkF != 0) {
            adh.zzb(2, this.zzkF);
        }
        if (this.zzkG != 2147483647L) {
            adh.zzb(3, this.zzkG);
        }
        if (this.zzkH) {
            adh.zzk(4, this.zzkH);
        }
        if (this.zzkI != 0) {
            adh.zzb(5, this.zzkI);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.key == null || this.key.equals(""))) {
            zzn += adh.zzm(1, this.key);
        }
        if (this.zzkF != 0) {
            zzn += adh.zze(2, this.zzkF);
        }
        if (this.zzkG != 2147483647L) {
            zzn += adh.zze(3, this.zzkG);
        }
        if (this.zzkH) {
            zzn += adh.zzct(4) + 1;
        }
        return this.zzkI != 0 ? zzn + adh.zze(5, this.zzkI) : zzn;
    }
}
