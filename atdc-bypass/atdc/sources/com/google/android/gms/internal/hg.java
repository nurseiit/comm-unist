package com.google.android.gms.internal;

import java.io.IOException;

public final class hg extends adj<hg> {
    private static volatile hg[] zzbTK;
    public int type;
    public hh zzbTL;

    public hg() {
        this.type = 1;
        this.zzbTL = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static hg[] zzEb() {
        if (zzbTK == null) {
            synchronized (adn.zzcsw) {
                if (zzbTK == null) {
                    zzbTK = new hg[0];
                }
            }
        }
        return zzbTK;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hg)) {
            return false;
        }
        hg hgVar = (hg) obj;
        if (this.type != hgVar.type) {
            return false;
        }
        if (this.zzbTL == null) {
            if (hgVar.zzbTL != null) {
                return false;
            }
        } else if (!this.zzbTL.equals(hgVar.zzbTL)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? hgVar.zzcso == null || hgVar.zzcso.isEmpty() : this.zzcso.equals(hgVar.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + (this.zzbTL == null ? 0 : this.zzbTL.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.type);
        if (this.zzbTL != null) {
            adh.zza(2, this.zzbTL);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn() + adh.zzs(1, this.type);
        return this.zzbTL != null ? zzn + adh.zzb(2, this.zzbTL) : zzn;
    }
}
