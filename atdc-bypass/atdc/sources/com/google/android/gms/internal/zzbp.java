package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbp extends adj<zzbp> {
    private static volatile zzbp[] zzlx;
    public String name;
    private zzbr zzly;
    public zzbl zzlz;

    public zzbp() {
        this.name = "";
        this.zzly = null;
        this.zzlz = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbp[] zzt() {
        if (zzlx == null) {
            synchronized (adn.zzcsw) {
                if (zzlx == null) {
                    zzlx = new zzbp[0];
                }
            }
        }
        return zzlx;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbp)) {
            return false;
        }
        zzbp zzbp = (zzbp) obj;
        if (this.name == null) {
            if (zzbp.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzbp.name)) {
            return false;
        }
        if (this.zzly == null) {
            if (zzbp.zzly != null) {
                return false;
            }
        } else if (!this.zzly.equals(zzbp.zzly)) {
            return false;
        }
        if (this.zzlz == null) {
            if (zzbp.zzlz != null) {
                return false;
            }
        } else if (!this.zzlz.equals(zzbp.zzlz)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzbp.zzcso == null || zzbp.zzcso.isEmpty() : this.zzcso.equals(zzbp.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzly == null ? 0 : this.zzly.hashCode())) * 31) + (this.zzlz == null ? 0 : this.zzlz.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.name == null || this.name.equals(""))) {
            adh.zzl(1, this.name);
        }
        if (this.zzly != null) {
            adh.zza(2, this.zzly);
        }
        if (this.zzlz != null) {
            adh.zza(3, this.zzlz);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.name == null || this.name.equals(""))) {
            zzn += adh.zzm(1, this.name);
        }
        if (this.zzly != null) {
            zzn += adh.zzb(2, this.zzly);
        }
        return this.zzlz != null ? zzn + adh.zzb(3, this.zzlz) : zzn;
    }
}
