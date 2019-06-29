package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjn extends adj<zzcjn> {
    private static volatile zzcjn[] zzbuL;
    public Integer zzbuM;
    public String zzbuN;
    public zzcjo[] zzbuO;
    private Boolean zzbuP;
    public zzcjp zzbuQ;

    public zzcjn() {
        this.zzbuM = null;
        this.zzbuN = null;
        this.zzbuO = zzcjo.zzzw();
        this.zzbuP = null;
        this.zzbuQ = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjn[] zzzv() {
        if (zzbuL == null) {
            synchronized (adn.zzcsw) {
                if (zzbuL == null) {
                    zzbuL = new zzcjn[0];
                }
            }
        }
        return zzbuL;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjn)) {
            return false;
        }
        zzcjn zzcjn = (zzcjn) obj;
        if (this.zzbuM == null) {
            if (zzcjn.zzbuM != null) {
                return false;
            }
        } else if (!this.zzbuM.equals(zzcjn.zzbuM)) {
            return false;
        }
        if (this.zzbuN == null) {
            if (zzcjn.zzbuN != null) {
                return false;
            }
        } else if (!this.zzbuN.equals(zzcjn.zzbuN)) {
            return false;
        }
        if (!adn.equals(this.zzbuO, zzcjn.zzbuO)) {
            return false;
        }
        if (this.zzbuP == null) {
            if (zzcjn.zzbuP != null) {
                return false;
            }
        } else if (!this.zzbuP.equals(zzcjn.zzbuP)) {
            return false;
        }
        if (this.zzbuQ == null) {
            if (zzcjn.zzbuQ != null) {
                return false;
            }
        } else if (!this.zzbuQ.equals(zzcjn.zzbuQ)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjn.zzcso == null || zzcjn.zzcso.isEmpty() : this.zzcso.equals(zzcjn.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbuM == null ? 0 : this.zzbuM.hashCode())) * 31) + (this.zzbuN == null ? 0 : this.zzbuN.hashCode())) * 31) + adn.hashCode(this.zzbuO)) * 31) + (this.zzbuP == null ? 0 : this.zzbuP.hashCode())) * 31) + (this.zzbuQ == null ? 0 : this.zzbuQ.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbuM != null) {
            adh.zzr(1, this.zzbuM.intValue());
        }
        if (this.zzbuN != null) {
            adh.zzl(2, this.zzbuN);
        }
        if (this.zzbuO != null && this.zzbuO.length > 0) {
            for (adp adp : this.zzbuO) {
                if (adp != null) {
                    adh.zza(3, adp);
                }
            }
        }
        if (this.zzbuP != null) {
            adh.zzk(4, this.zzbuP.booleanValue());
        }
        if (this.zzbuQ != null) {
            adh.zza(5, this.zzbuQ);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbuM != null) {
            zzn += adh.zzs(1, this.zzbuM.intValue());
        }
        if (this.zzbuN != null) {
            zzn += adh.zzm(2, this.zzbuN);
        }
        if (this.zzbuO != null && this.zzbuO.length > 0) {
            for (adp adp : this.zzbuO) {
                if (adp != null) {
                    zzn += adh.zzb(3, adp);
                }
            }
        }
        if (this.zzbuP != null) {
            this.zzbuP.booleanValue();
            zzn += adh.zzct(4) + 1;
        }
        return this.zzbuQ != null ? zzn + adh.zzb(5, this.zzbuQ) : zzn;
    }
}
