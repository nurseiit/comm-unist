package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjv extends adj<zzcjv> {
    private static volatile zzcjv[] zzbvr;
    public Integer zzbuI;
    public zzcka zzbvs;
    public zzcka zzbvt;
    public Boolean zzbvu;

    public zzcjv() {
        this.zzbuI = null;
        this.zzbvs = null;
        this.zzbvt = null;
        this.zzbvu = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjv[] zzzA() {
        if (zzbvr == null) {
            synchronized (adn.zzcsw) {
                if (zzbvr == null) {
                    zzbvr = new zzcjv[0];
                }
            }
        }
        return zzbvr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjv)) {
            return false;
        }
        zzcjv zzcjv = (zzcjv) obj;
        if (this.zzbuI == null) {
            if (zzcjv.zzbuI != null) {
                return false;
            }
        } else if (!this.zzbuI.equals(zzcjv.zzbuI)) {
            return false;
        }
        if (this.zzbvs == null) {
            if (zzcjv.zzbvs != null) {
                return false;
            }
        } else if (!this.zzbvs.equals(zzcjv.zzbvs)) {
            return false;
        }
        if (this.zzbvt == null) {
            if (zzcjv.zzbvt != null) {
                return false;
            }
        } else if (!this.zzbvt.equals(zzcjv.zzbvt)) {
            return false;
        }
        if (this.zzbvu == null) {
            if (zzcjv.zzbvu != null) {
                return false;
            }
        } else if (!this.zzbvu.equals(zzcjv.zzbvu)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjv.zzcso == null || zzcjv.zzcso.isEmpty() : this.zzcso.equals(zzcjv.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbuI == null ? 0 : this.zzbuI.hashCode())) * 31) + (this.zzbvs == null ? 0 : this.zzbvs.hashCode())) * 31) + (this.zzbvt == null ? 0 : this.zzbvt.hashCode())) * 31) + (this.zzbvu == null ? 0 : this.zzbvu.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbuI != null) {
            adh.zzr(1, this.zzbuI.intValue());
        }
        if (this.zzbvs != null) {
            adh.zza(2, this.zzbvs);
        }
        if (this.zzbvt != null) {
            adh.zza(3, this.zzbvt);
        }
        if (this.zzbvu != null) {
            adh.zzk(4, this.zzbvu.booleanValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbuI != null) {
            zzn += adh.zzs(1, this.zzbuI.intValue());
        }
        if (this.zzbvs != null) {
            zzn += adh.zzb(2, this.zzbvs);
        }
        if (this.zzbvt != null) {
            zzn += adh.zzb(3, this.zzbvt);
        }
        if (this.zzbvu == null) {
            return zzn;
        }
        this.zzbvu.booleanValue();
        return zzn + (adh.zzct(4) + 1);
    }
}
