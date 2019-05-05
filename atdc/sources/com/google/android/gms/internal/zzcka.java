package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcka extends adj<zzcka> {
    public long[] zzbwe;
    public long[] zzbwf;

    public zzcka() {
        this.zzbwe = ads.zzcsD;
        this.zzbwf = ads.zzcsD;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcka)) {
            return false;
        }
        zzcka zzcka = (zzcka) obj;
        return (adn.equals(this.zzbwe, zzcka.zzbwe) && adn.equals(this.zzbwf, zzcka.zzbwf)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzcka.zzcso == null || zzcka.zzcso.isEmpty() : this.zzcso.equals(zzcka.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzbwe)) * 31) + adn.hashCode(this.zzbwf)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbwe != null && this.zzbwe.length > 0) {
            for (long zza : this.zzbwe) {
                adh.zza(1, zza);
            }
        }
        if (this.zzbwf != null && this.zzbwf.length > 0) {
            for (long zza2 : this.zzbwf) {
                adh.zza(2, zza2);
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (this.zzbwe != null && this.zzbwe.length > 0) {
            int i2 = 0;
            for (long zzaP : this.zzbwe) {
                i2 += adh.zzaP(zzaP);
            }
            zzn = (zzn + i2) + (this.zzbwe.length * 1);
        }
        if (this.zzbwf == null || this.zzbwf.length <= 0) {
            return zzn;
        }
        i = 0;
        for (long zzaP2 : this.zzbwf) {
            i += adh.zzaP(zzaP2);
        }
        return (zzn + i) + (this.zzbwf.length * 1);
    }
}
