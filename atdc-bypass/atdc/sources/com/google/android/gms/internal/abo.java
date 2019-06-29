package com.google.android.gms.internal;

import java.io.IOException;

public final class abo extends adj<abo> {
    private static volatile abo[] zzcnV;
    public String zzbxU;
    public abm[] zzcnW;

    public abo() {
        this.zzbxU = "";
        this.zzcnW = abm.zzKJ();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static abo[] zzKK() {
        if (zzcnV == null) {
            synchronized (adn.zzcsw) {
                if (zzcnV == null) {
                    zzcnV = new abo[0];
                }
            }
        }
        return zzcnV;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof abo)) {
            return false;
        }
        abo abo = (abo) obj;
        if (this.zzbxU == null) {
            if (abo.zzbxU != null) {
                return false;
            }
        } else if (!this.zzbxU.equals(abo.zzbxU)) {
            return false;
        }
        return !adn.equals(this.zzcnW, abo.zzcnW) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? abo.zzcso == null || abo.zzcso.isEmpty() : this.zzcso.equals(abo.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.zzbxU == null ? 0 : this.zzbxU.hashCode())) * 31) + adn.hashCode(this.zzcnW)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.zzbxU == null || this.zzbxU.equals(""))) {
            adh.zzl(1, this.zzbxU);
        }
        if (this.zzcnW != null && this.zzcnW.length > 0) {
            for (adp adp : this.zzcnW) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.zzbxU == null || this.zzbxU.equals(""))) {
            zzn += adh.zzm(1, this.zzbxU);
        }
        if (this.zzcnW != null && this.zzcnW.length > 0) {
            for (adp adp : this.zzcnW) {
                if (adp != null) {
                    zzn += adh.zzb(2, adp);
                }
            }
        }
        return zzn;
    }
}
