package com.google.android.gms.internal;

import java.io.IOException;

public final class acl extends adj<acl> {
    private static adk<Object, acl> zzcqB = adk.zza(11, acl.class, 855033290);
    private static final acl[] zzcqC = new acl[0];
    public String zzcqD;
    public aco zzcqE;
    private int zzcqF;
    private int zzcqG;
    private int zzcqH;
    private adc zzcqI;
    private acm zzcqJ;
    private String[] zzcqK;
    private acr zzcqL;

    public acl() {
        this.zzcqD = "";
        this.zzcqE = null;
        this.zzcqF = 0;
        this.zzcqG = 0;
        this.zzcqH = 0;
        this.zzcqI = null;
        this.zzcqJ = null;
        this.zzcqK = ads.EMPTY_STRING_ARRAY;
        this.zzcqL = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acl)) {
            return false;
        }
        acl acl = (acl) obj;
        if (this.zzcqD == null) {
            if (acl.zzcqD != null) {
                return false;
            }
        } else if (!this.zzcqD.equals(acl.zzcqD)) {
            return false;
        }
        if (this.zzcqE == null) {
            if (acl.zzcqE != null) {
                return false;
            }
        } else if (!this.zzcqE.equals(acl.zzcqE)) {
            return false;
        }
        if (this.zzcqF != acl.zzcqF || this.zzcqG != acl.zzcqG || this.zzcqH != acl.zzcqH) {
            return false;
        }
        if (this.zzcqI == null) {
            if (acl.zzcqI != null) {
                return false;
            }
        } else if (!this.zzcqI.equals(acl.zzcqI)) {
            return false;
        }
        if (this.zzcqJ == null) {
            if (acl.zzcqJ != null) {
                return false;
            }
        } else if (!this.zzcqJ.equals(acl.zzcqJ)) {
            return false;
        }
        if (!adn.equals(this.zzcqK, acl.zzcqK)) {
            return false;
        }
        if (this.zzcqL == null) {
            if (acl.zzcqL != null) {
                return false;
            }
        } else if (!this.zzcqL.equals(acl.zzcqL)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? acl.zzcso == null || acl.zzcso.isEmpty() : this.zzcso.equals(acl.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzcqD == null ? 0 : this.zzcqD.hashCode())) * 31) + (this.zzcqE == null ? 0 : this.zzcqE.hashCode())) * 31) + this.zzcqF) * 31) + this.zzcqG) * 31) + this.zzcqH) * 31) + (this.zzcqI == null ? 0 : this.zzcqI.hashCode())) * 31) + (this.zzcqJ == null ? 0 : this.zzcqJ.hashCode())) * 31) + adn.hashCode(this.zzcqK)) * 31) + (this.zzcqL == null ? 0 : this.zzcqL.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.zzcqD == null || this.zzcqD.equals(""))) {
            adh.zzl(1, this.zzcqD);
        }
        if (this.zzcqE != null) {
            adh.zza(2, this.zzcqE);
        }
        if (this.zzcqF != 0) {
            adh.zzr(4, this.zzcqF);
        }
        if (this.zzcqG != 0) {
            adh.zzr(5, this.zzcqG);
        }
        if (this.zzcqH != 0) {
            adh.zzr(6, this.zzcqH);
        }
        if (this.zzcqI != null) {
            adh.zza(7, this.zzcqI);
        }
        if (this.zzcqJ != null) {
            adh.zza(8, this.zzcqJ);
        }
        if (this.zzcqK != null && this.zzcqK.length > 0) {
            for (String str : this.zzcqK) {
                if (str != null) {
                    adh.zzl(9, str);
                }
            }
        }
        if (this.zzcqL != null) {
            adh.zza(10, this.zzcqL);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.zzcqD == null || this.zzcqD.equals(""))) {
            zzn += adh.zzm(1, this.zzcqD);
        }
        if (this.zzcqE != null) {
            zzn += adh.zzb(2, this.zzcqE);
        }
        if (this.zzcqF != 0) {
            zzn += adh.zzs(4, this.zzcqF);
        }
        if (this.zzcqG != 0) {
            zzn += adh.zzs(5, this.zzcqG);
        }
        if (this.zzcqH != 0) {
            zzn += adh.zzs(6, this.zzcqH);
        }
        if (this.zzcqI != null) {
            zzn += adh.zzb(7, this.zzcqI);
        }
        if (this.zzcqJ != null) {
            zzn += adh.zzb(8, this.zzcqJ);
        }
        if (this.zzcqK != null && this.zzcqK.length > 0) {
            int i = 0;
            int i2 = 0;
            for (String str : this.zzcqK) {
                if (str != null) {
                    i2++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        return this.zzcqL != null ? zzn + adh.zzb(10, this.zzcqL) : zzn;
    }
}
