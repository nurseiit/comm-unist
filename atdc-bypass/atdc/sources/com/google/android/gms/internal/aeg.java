package com.google.android.gms.internal;

import java.io.IOException;

public final class aeg extends adj<aeg> implements Cloneable {
    private String[] zzctG;
    private String[] zzctH;
    private int[] zzctI;
    private long[] zzctJ;
    private long[] zzctK;

    public aeg() {
        this.zzctG = ads.EMPTY_STRING_ARRAY;
        this.zzctH = ads.EMPTY_STRING_ARRAY;
        this.zzctI = ads.zzcsC;
        this.zzctJ = ads.zzcsD;
        this.zzctK = ads.zzcsD;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    private aeg zzMa() {
        try {
            aeg aeg = (aeg) super.clone();
            if (this.zzctG != null && this.zzctG.length > 0) {
                aeg.zzctG = (String[]) this.zzctG.clone();
            }
            if (this.zzctH != null && this.zzctH.length > 0) {
                aeg.zzctH = (String[]) this.zzctH.clone();
            }
            if (this.zzctI != null && this.zzctI.length > 0) {
                aeg.zzctI = (int[]) this.zzctI.clone();
            }
            if (this.zzctJ != null && this.zzctJ.length > 0) {
                aeg.zzctJ = (long[]) this.zzctJ.clone();
            }
            if (this.zzctK != null && this.zzctK.length > 0) {
                aeg.zzctK = (long[]) this.zzctK.clone();
            }
            return aeg;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzMa();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aeg)) {
            return false;
        }
        aeg aeg = (aeg) obj;
        return (adn.equals(this.zzctG, aeg.zzctG) && adn.equals(this.zzctH, aeg.zzctH) && adn.equals(this.zzctI, aeg.zzctI) && adn.equals(this.zzctJ, aeg.zzctJ) && adn.equals(this.zzctK, aeg.zzctK)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? aeg.zzcso == null || aeg.zzcso.isEmpty() : this.zzcso.equals(aeg.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzctG)) * 31) + adn.hashCode(this.zzctH)) * 31) + adn.hashCode(this.zzctI)) * 31) + adn.hashCode(this.zzctJ)) * 31) + adn.hashCode(this.zzctK)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final /* synthetic */ adj zzLN() throws CloneNotSupportedException {
        return (aeg) clone();
    }

    public final /* synthetic */ adp zzLO() throws CloneNotSupportedException {
        return (aeg) clone();
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzctG != null && this.zzctG.length > 0) {
            for (String str : this.zzctG) {
                if (str != null) {
                    adh.zzl(1, str);
                }
            }
        }
        if (this.zzctH != null && this.zzctH.length > 0) {
            for (String str2 : this.zzctH) {
                if (str2 != null) {
                    adh.zzl(2, str2);
                }
            }
        }
        if (this.zzctI != null && this.zzctI.length > 0) {
            for (int zzr : this.zzctI) {
                adh.zzr(3, zzr);
            }
        }
        if (this.zzctJ != null && this.zzctJ.length > 0) {
            for (long zzb : this.zzctJ) {
                adh.zzb(4, zzb);
            }
        }
        if (this.zzctK != null && this.zzctK.length > 0) {
            for (long zzb2 : this.zzctK) {
                adh.zzb(5, zzb2);
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int i3;
        int zzn = super.zzn();
        if (this.zzctG != null && this.zzctG.length > 0) {
            i = 0;
            i2 = 0;
            for (String str : this.zzctG) {
                if (str != null) {
                    i2++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzctH != null && this.zzctH.length > 0) {
            i = 0;
            i2 = 0;
            for (String str2 : this.zzctH) {
                if (str2 != null) {
                    i2++;
                    i += adh.zzhQ(str2);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzctI != null && this.zzctI.length > 0) {
            i = 0;
            for (int i22 : this.zzctI) {
                i += adh.zzcr(i22);
            }
            zzn = (zzn + i) + (this.zzctI.length * 1);
        }
        if (this.zzctJ != null && this.zzctJ.length > 0) {
            i = 0;
            for (long zzaP : this.zzctJ) {
                i += adh.zzaP(zzaP);
            }
            zzn = (zzn + i) + (this.zzctJ.length * 1);
        }
        if (this.zzctK == null || this.zzctK.length <= 0) {
            return zzn;
        }
        i3 = 0;
        for (long zzaP2 : this.zzctK) {
            i3 += adh.zzaP(zzaP2);
        }
        return (zzn + i3) + (this.zzctK.length * 1);
    }
}
