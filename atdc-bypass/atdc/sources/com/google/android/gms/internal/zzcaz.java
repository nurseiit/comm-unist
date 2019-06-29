package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcaz extends adj<zzcaz> {
    public zzcba[] zzbgp;

    public zzcaz() {
        this.zzbgp = zzcba.zzvH();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcaz)) {
            return false;
        }
        zzcaz zzcaz = (zzcaz) obj;
        return !adn.equals(this.zzbgp, zzcaz.zzbgp) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? zzcaz.zzcso == null || zzcaz.zzcso.isEmpty() : this.zzcso.equals(zzcaz.zzcso);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzbgp)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbgp != null && this.zzbgp.length > 0) {
            for (adp adp : this.zzbgp) {
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
        if (this.zzbgp != null && this.zzbgp.length > 0) {
            for (adp adp : this.zzbgp) {
                if (adp != null) {
                    zzn += adh.zzb(1, adp);
                }
            }
        }
        return zzn;
    }
}
