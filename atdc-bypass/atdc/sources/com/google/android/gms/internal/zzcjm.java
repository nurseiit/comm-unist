package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjm extends adj<zzcjm> {
    private static volatile zzcjm[] zzbuH;
    public Integer zzbuI;
    public zzcjq[] zzbuJ;
    public zzcjn[] zzbuK;

    public zzcjm() {
        this.zzbuI = null;
        this.zzbuJ = zzcjq.zzzx();
        this.zzbuK = zzcjn.zzzv();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjm[] zzzu() {
        if (zzbuH == null) {
            synchronized (adn.zzcsw) {
                if (zzbuH == null) {
                    zzbuH = new zzcjm[0];
                }
            }
        }
        return zzbuH;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjm)) {
            return false;
        }
        zzcjm zzcjm = (zzcjm) obj;
        if (this.zzbuI == null) {
            if (zzcjm.zzbuI != null) {
                return false;
            }
        } else if (!this.zzbuI.equals(zzcjm.zzbuI)) {
            return false;
        }
        return (adn.equals(this.zzbuJ, zzcjm.zzbuJ) && adn.equals(this.zzbuK, zzcjm.zzbuK)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjm.zzcso == null || zzcjm.zzcso.isEmpty() : this.zzcso.equals(zzcjm.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbuI == null ? 0 : this.zzbuI.hashCode())) * 31) + adn.hashCode(this.zzbuJ)) * 31) + adn.hashCode(this.zzbuK)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbuI != null) {
            adh.zzr(1, this.zzbuI.intValue());
        }
        if (this.zzbuJ != null && this.zzbuJ.length > 0) {
            for (adp adp : this.zzbuJ) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        if (this.zzbuK != null && this.zzbuK.length > 0) {
            for (adp adp2 : this.zzbuK) {
                if (adp2 != null) {
                    adh.zza(3, adp2);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbuI != null) {
            zzn += adh.zzs(1, this.zzbuI.intValue());
        }
        if (this.zzbuJ != null && this.zzbuJ.length > 0) {
            int i = zzn;
            for (adp adp : this.zzbuJ) {
                if (adp != null) {
                    i += adh.zzb(2, adp);
                }
            }
            zzn = i;
        }
        if (this.zzbuK != null && this.zzbuK.length > 0) {
            for (adp adp2 : this.zzbuK) {
                if (adp2 != null) {
                    zzn += adh.zzb(3, adp2);
                }
            }
        }
        return zzn;
    }
}
