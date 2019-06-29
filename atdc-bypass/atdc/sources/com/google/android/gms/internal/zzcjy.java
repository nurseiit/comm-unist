package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjy extends adj<zzcjy> {
    public zzcjz[] zzbvB;

    public zzcjy() {
        this.zzbvB = zzcjz.zzzD();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjy)) {
            return false;
        }
        zzcjy zzcjy = (zzcjy) obj;
        return !adn.equals(this.zzbvB, zzcjy.zzbvB) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjy.zzcso == null || zzcjy.zzcso.isEmpty() : this.zzcso.equals(zzcjy.zzcso);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzbvB)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbvB != null && this.zzbvB.length > 0) {
            for (adp adp : this.zzbvB) {
                if (adp != null) {
                    adh.zza(1, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbvB != null && this.zzbvB.length > 0) {
            for (adp adp : this.zzbvB) {
                if (adp != null) {
                    zzn += adh.zzb(1, adp);
                }
            }
        }
        return zzn;
    }
}
