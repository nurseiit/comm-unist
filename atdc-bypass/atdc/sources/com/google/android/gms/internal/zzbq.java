package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbq extends adj<zzbq> {
    public zzbp[] zzlA;
    public zzbn zzlB;
    public String zzlC;

    public zzbq() {
        this.zzlA = zzbp.zzt();
        this.zzlB = null;
        this.zzlC = "";
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbq)) {
            return false;
        }
        zzbq zzbq = (zzbq) obj;
        if (!adn.equals(this.zzlA, zzbq.zzlA)) {
            return false;
        }
        if (this.zzlB == null) {
            if (zzbq.zzlB != null) {
                return false;
            }
        } else if (!this.zzlB.equals(zzbq.zzlB)) {
            return false;
        }
        if (this.zzlC == null) {
            if (zzbq.zzlC != null) {
                return false;
            }
        } else if (!this.zzlC.equals(zzbq.zzlC)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzbq.zzcso == null || zzbq.zzcso.isEmpty() : this.zzcso.equals(zzbq.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzlA)) * 31) + (this.zzlB == null ? 0 : this.zzlB.hashCode())) * 31) + (this.zzlC == null ? 0 : this.zzlC.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzlA != null && this.zzlA.length > 0) {
            for (adp adp : this.zzlA) {
                if (adp != null) {
                    adh.zza(1, adp);
                }
            }
        }
        if (this.zzlB != null) {
            adh.zza(2, this.zzlB);
        }
        if (!(this.zzlC == null || this.zzlC.equals(""))) {
            adh.zzl(3, this.zzlC);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzlA != null && this.zzlA.length > 0) {
            for (adp adp : this.zzlA) {
                if (adp != null) {
                    zzn += adh.zzb(1, adp);
                }
            }
        }
        if (this.zzlB != null) {
            zzn += adh.zzb(2, this.zzlB);
        }
        return (this.zzlC == null || this.zzlC.equals("")) ? zzn : zzn + adh.zzm(3, this.zzlC);
    }
}
