package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbr extends adj<zzbr> {
    private static volatile zzbr[] zzlD;
    public String string;
    public int type;
    public zzbr[] zzlE;
    public zzbr[] zzlF;
    public zzbr[] zzlG;
    public String zzlH;
    public String zzlI;
    public long zzlJ;
    public boolean zzlK;
    public zzbr[] zzlL;
    public int[] zzlM;
    public boolean zzlN;

    public zzbr() {
        this.type = 1;
        this.string = "";
        this.zzlE = zzu();
        this.zzlF = zzu();
        this.zzlG = zzu();
        this.zzlH = "";
        this.zzlI = "";
        this.zzlJ = 0;
        this.zzlK = false;
        this.zzlL = zzu();
        this.zzlM = ads.zzcsC;
        this.zzlN = false;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbr[] zzu() {
        if (zzlD == null) {
            synchronized (adn.zzcsw) {
                if (zzlD == null) {
                    zzlD = new zzbr[0];
                }
            }
        }
        return zzlD;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbr)) {
            return false;
        }
        zzbr zzbr = (zzbr) obj;
        if (this.type != zzbr.type) {
            return false;
        }
        if (this.string == null) {
            if (zzbr.string != null) {
                return false;
            }
        } else if (!this.string.equals(zzbr.string)) {
            return false;
        }
        if (!adn.equals(this.zzlE, zzbr.zzlE) || !adn.equals(this.zzlF, zzbr.zzlF) || !adn.equals(this.zzlG, zzbr.zzlG)) {
            return false;
        }
        if (this.zzlH == null) {
            if (zzbr.zzlH != null) {
                return false;
            }
        } else if (!this.zzlH.equals(zzbr.zzlH)) {
            return false;
        }
        if (this.zzlI == null) {
            if (zzbr.zzlI != null) {
                return false;
            }
        } else if (!this.zzlI.equals(zzbr.zzlI)) {
            return false;
        }
        return (this.zzlJ == zzbr.zzlJ && this.zzlK == zzbr.zzlK && adn.equals(this.zzlL, zzbr.zzlL) && adn.equals(this.zzlM, zzbr.zzlM) && this.zzlN == zzbr.zzlN) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbr.zzcso == null || zzbr.zzcso.isEmpty() : this.zzcso.equals(zzbr.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int i2 = 1237;
        int hashCode = (((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + (this.string == null ? 0 : this.string.hashCode())) * 31) + adn.hashCode(this.zzlE)) * 31) + adn.hashCode(this.zzlF)) * 31) + adn.hashCode(this.zzlG)) * 31) + (this.zzlH == null ? 0 : this.zzlH.hashCode())) * 31) + (this.zzlI == null ? 0 : this.zzlI.hashCode())) * 31) + ((int) (this.zzlJ ^ (this.zzlJ >>> 32)))) * 31) + (this.zzlK ? 1231 : 1237)) * 31) + adn.hashCode(this.zzlL)) * 31) + adn.hashCode(this.zzlM)) * 31;
        if (this.zzlN) {
            i2 = 1231;
        }
        hashCode = (hashCode + i2) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.type);
        if (!(this.string == null || this.string.equals(""))) {
            adh.zzl(2, this.string);
        }
        if (this.zzlE != null && this.zzlE.length > 0) {
            for (adp adp : this.zzlE) {
                if (adp != null) {
                    adh.zza(3, adp);
                }
            }
        }
        if (this.zzlF != null && this.zzlF.length > 0) {
            for (adp adp2 : this.zzlF) {
                if (adp2 != null) {
                    adh.zza(4, adp2);
                }
            }
        }
        if (this.zzlG != null && this.zzlG.length > 0) {
            for (adp adp22 : this.zzlG) {
                if (adp22 != null) {
                    adh.zza(5, adp22);
                }
            }
        }
        if (!(this.zzlH == null || this.zzlH.equals(""))) {
            adh.zzl(6, this.zzlH);
        }
        if (!(this.zzlI == null || this.zzlI.equals(""))) {
            adh.zzl(7, this.zzlI);
        }
        if (this.zzlJ != 0) {
            adh.zzb(8, this.zzlJ);
        }
        if (this.zzlN) {
            adh.zzk(9, this.zzlN);
        }
        if (this.zzlM != null && this.zzlM.length > 0) {
            for (int zzr : this.zzlM) {
                adh.zzr(10, zzr);
            }
        }
        if (this.zzlL != null && this.zzlL.length > 0) {
            for (adp adp3 : this.zzlL) {
                if (adp3 != null) {
                    adh.zza(11, adp3);
                }
            }
        }
        if (this.zzlK) {
            adh.zzk(12, this.zzlK);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn() + adh.zzs(1, this.type);
        if (!(this.string == null || this.string.equals(""))) {
            zzn += adh.zzm(2, this.string);
        }
        if (this.zzlE != null && this.zzlE.length > 0) {
            i = zzn;
            for (adp adp : this.zzlE) {
                if (adp != null) {
                    i += adh.zzb(3, adp);
                }
            }
            zzn = i;
        }
        if (this.zzlF != null && this.zzlF.length > 0) {
            i = zzn;
            for (adp adp2 : this.zzlF) {
                if (adp2 != null) {
                    i += adh.zzb(4, adp2);
                }
            }
            zzn = i;
        }
        if (this.zzlG != null && this.zzlG.length > 0) {
            i = zzn;
            for (adp adp22 : this.zzlG) {
                if (adp22 != null) {
                    i += adh.zzb(5, adp22);
                }
            }
            zzn = i;
        }
        if (!(this.zzlH == null || this.zzlH.equals(""))) {
            zzn += adh.zzm(6, this.zzlH);
        }
        if (!(this.zzlI == null || this.zzlI.equals(""))) {
            zzn += adh.zzm(7, this.zzlI);
        }
        if (this.zzlJ != 0) {
            zzn += adh.zze(8, this.zzlJ);
        }
        if (this.zzlN) {
            zzn += adh.zzct(9) + 1;
        }
        if (this.zzlM != null && this.zzlM.length > 0) {
            int i2 = 0;
            for (int zzcr : this.zzlM) {
                i2 += adh.zzcr(zzcr);
            }
            zzn = (zzn + i2) + (this.zzlM.length * 1);
        }
        if (this.zzlL != null && this.zzlL.length > 0) {
            for (adp adp3 : this.zzlL) {
                if (adp3 != null) {
                    zzn += adh.zzb(11, adp3);
                }
            }
        }
        return this.zzlK ? zzn + (adh.zzct(12) + 1) : zzn;
    }
}
