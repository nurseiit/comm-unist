package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjr extends adj<zzcjr> {
    public Integer zzbve;
    public String zzbvf;
    public Boolean zzbvg;
    public String[] zzbvh;

    public zzcjr() {
        this.zzbve = null;
        this.zzbvf = null;
        this.zzbvg = null;
        this.zzbvh = ads.EMPTY_STRING_ARRAY;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjr)) {
            return false;
        }
        zzcjr zzcjr = (zzcjr) obj;
        if (this.zzbve == null) {
            if (zzcjr.zzbve != null) {
                return false;
            }
        } else if (!this.zzbve.equals(zzcjr.zzbve)) {
            return false;
        }
        if (this.zzbvf == null) {
            if (zzcjr.zzbvf != null) {
                return false;
            }
        } else if (!this.zzbvf.equals(zzcjr.zzbvf)) {
            return false;
        }
        if (this.zzbvg == null) {
            if (zzcjr.zzbvg != null) {
                return false;
            }
        } else if (!this.zzbvg.equals(zzcjr.zzbvg)) {
            return false;
        }
        return !adn.equals(this.zzbvh, zzcjr.zzbvh) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjr.zzcso == null || zzcjr.zzcso.isEmpty() : this.zzcso.equals(zzcjr.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbve == null ? 0 : this.zzbve.intValue())) * 31) + (this.zzbvf == null ? 0 : this.zzbvf.hashCode())) * 31) + (this.zzbvg == null ? 0 : this.zzbvg.hashCode())) * 31) + adn.hashCode(this.zzbvh)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbve != null) {
            adh.zzr(1, this.zzbve.intValue());
        }
        if (this.zzbvf != null) {
            adh.zzl(2, this.zzbvf);
        }
        if (this.zzbvg != null) {
            adh.zzk(3, this.zzbvg.booleanValue());
        }
        if (this.zzbvh != null && this.zzbvh.length > 0) {
            for (String str : this.zzbvh) {
                if (str != null) {
                    adh.zzl(4, str);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbve != null) {
            zzn += adh.zzs(1, this.zzbve.intValue());
        }
        if (this.zzbvf != null) {
            zzn += adh.zzm(2, this.zzbvf);
        }
        if (this.zzbvg != null) {
            this.zzbvg.booleanValue();
            zzn += adh.zzct(3) + 1;
        }
        if (this.zzbvh == null || this.zzbvh.length <= 0) {
            return zzn;
        }
        int i = 0;
        int i2 = 0;
        for (String str : this.zzbvh) {
            if (str != null) {
                i2++;
                i += adh.zzhQ(str);
            }
        }
        return (zzn + i) + (i2 * 1);
    }
}
