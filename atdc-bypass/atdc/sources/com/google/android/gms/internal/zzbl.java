package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbl extends adj<zzbl> {
    public zzbr[] zzkJ;
    public zzbr[] zzkK;
    public zzbk[] zzkL;

    public zzbl() {
        this.zzkJ = zzbr.zzu();
        this.zzkK = zzbr.zzu();
        this.zzkL = zzbk.zzq();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbl)) {
            return false;
        }
        zzbl zzbl = (zzbl) obj;
        return (adn.equals(this.zzkJ, zzbl.zzkJ) && adn.equals(this.zzkK, zzbl.zzkK) && adn.equals(this.zzkL, zzbl.zzkL)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbl.zzcso == null || zzbl.zzcso.isEmpty() : this.zzcso.equals(zzbl.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzkJ)) * 31) + adn.hashCode(this.zzkK)) * 31) + adn.hashCode(this.zzkL)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzkJ != null && this.zzkJ.length > 0) {
            for (adp adp : this.zzkJ) {
                if (adp != null) {
                    adh.zza(1, adp);
                }
            }
        }
        if (this.zzkK != null && this.zzkK.length > 0) {
            for (adp adp2 : this.zzkK) {
                if (adp2 != null) {
                    adh.zza(2, adp2);
                }
            }
        }
        if (this.zzkL != null && this.zzkL.length > 0) {
            for (adp adp3 : this.zzkL) {
                if (adp3 != null) {
                    adh.zza(3, adp3);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (this.zzkJ != null && this.zzkJ.length > 0) {
            i = zzn;
            for (adp adp : this.zzkJ) {
                if (adp != null) {
                    i += adh.zzb(1, adp);
                }
            }
            zzn = i;
        }
        if (this.zzkK != null && this.zzkK.length > 0) {
            i = zzn;
            for (adp adp2 : this.zzkK) {
                if (adp2 != null) {
                    i += adh.zzb(2, adp2);
                }
            }
            zzn = i;
        }
        if (this.zzkL != null && this.zzkL.length > 0) {
            for (adp adp3 : this.zzkL) {
                if (adp3 != null) {
                    zzn += adh.zzb(3, adp3);
                }
            }
        }
        return zzn;
    }
}
