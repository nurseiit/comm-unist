package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjt extends adj<zzcjt> {
    public String zzboQ;
    public Long zzbvl;
    private Integer zzbvm;
    public zzcju[] zzbvn;
    public zzcjs[] zzbvo;
    public zzcjm[] zzbvp;

    public zzcjt() {
        this.zzbvl = null;
        this.zzboQ = null;
        this.zzbvm = null;
        this.zzbvn = zzcju.zzzz();
        this.zzbvo = zzcjs.zzzy();
        this.zzbvp = zzcjm.zzzu();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjt)) {
            return false;
        }
        zzcjt zzcjt = (zzcjt) obj;
        if (this.zzbvl == null) {
            if (zzcjt.zzbvl != null) {
                return false;
            }
        } else if (!this.zzbvl.equals(zzcjt.zzbvl)) {
            return false;
        }
        if (this.zzboQ == null) {
            if (zzcjt.zzboQ != null) {
                return false;
            }
        } else if (!this.zzboQ.equals(zzcjt.zzboQ)) {
            return false;
        }
        if (this.zzbvm == null) {
            if (zzcjt.zzbvm != null) {
                return false;
            }
        } else if (!this.zzbvm.equals(zzcjt.zzbvm)) {
            return false;
        }
        return (adn.equals(this.zzbvn, zzcjt.zzbvn) && adn.equals(this.zzbvo, zzcjt.zzbvo) && adn.equals(this.zzbvp, zzcjt.zzbvp)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjt.zzcso == null || zzcjt.zzcso.isEmpty() : this.zzcso.equals(zzcjt.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbvl == null ? 0 : this.zzbvl.hashCode())) * 31) + (this.zzboQ == null ? 0 : this.zzboQ.hashCode())) * 31) + (this.zzbvm == null ? 0 : this.zzbvm.hashCode())) * 31) + adn.hashCode(this.zzbvn)) * 31) + adn.hashCode(this.zzbvo)) * 31) + adn.hashCode(this.zzbvp)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbvl != null) {
            adh.zzb(1, this.zzbvl.longValue());
        }
        if (this.zzboQ != null) {
            adh.zzl(2, this.zzboQ);
        }
        if (this.zzbvm != null) {
            adh.zzr(3, this.zzbvm.intValue());
        }
        if (this.zzbvn != null && this.zzbvn.length > 0) {
            for (adp adp : this.zzbvn) {
                if (adp != null) {
                    adh.zza(4, adp);
                }
            }
        }
        if (this.zzbvo != null && this.zzbvo.length > 0) {
            for (adp adp2 : this.zzbvo) {
                if (adp2 != null) {
                    adh.zza(5, adp2);
                }
            }
        }
        if (this.zzbvp != null && this.zzbvp.length > 0) {
            for (adp adp3 : this.zzbvp) {
                if (adp3 != null) {
                    adh.zza(6, adp3);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (this.zzbvl != null) {
            zzn += adh.zze(1, this.zzbvl.longValue());
        }
        if (this.zzboQ != null) {
            zzn += adh.zzm(2, this.zzboQ);
        }
        if (this.zzbvm != null) {
            zzn += adh.zzs(3, this.zzbvm.intValue());
        }
        if (this.zzbvn != null && this.zzbvn.length > 0) {
            i = zzn;
            for (adp adp : this.zzbvn) {
                if (adp != null) {
                    i += adh.zzb(4, adp);
                }
            }
            zzn = i;
        }
        if (this.zzbvo != null && this.zzbvo.length > 0) {
            i = zzn;
            for (adp adp2 : this.zzbvo) {
                if (adp2 != null) {
                    i += adh.zzb(5, adp2);
                }
            }
            zzn = i;
        }
        if (this.zzbvp != null && this.zzbvp.length > 0) {
            for (adp adp3 : this.zzbvp) {
                if (adp3 != null) {
                    zzn += adh.zzb(6, adp3);
                }
            }
        }
        return zzn;
    }
}
