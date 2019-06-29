package com.google.android.gms.internal;

import java.io.IOException;

public final class aee extends adj<aee> {
    private static volatile aee[] zzctz;
    private String name;
    private boolean[] zzctA;
    private long[] zzctB;
    private String[] zzctC;
    private aef[] zzctD;

    public aee() {
        this.name = "";
        this.zzctA = ads.zzcsG;
        this.zzctB = ads.zzcsD;
        this.zzctC = ads.EMPTY_STRING_ARRAY;
        this.zzctD = aef.zzLZ();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static aee[] zzLY() {
        if (zzctz == null) {
            synchronized (adn.zzcsw) {
                if (zzctz == null) {
                    zzctz = new aee[0];
                }
            }
        }
        return zzctz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aee)) {
            return false;
        }
        aee aee = (aee) obj;
        if (this.name == null) {
            if (aee.name != null) {
                return false;
            }
        } else if (!this.name.equals(aee.name)) {
            return false;
        }
        return (adn.equals(this.zzctA, aee.zzctA) && adn.equals(this.zzctB, aee.zzctB) && adn.equals(this.zzctC, aee.zzctC) && adn.equals(this.zzctD, aee.zzctD)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? aee.zzcso == null || aee.zzcso.isEmpty() : this.zzcso.equals(aee.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + adn.hashCode(this.zzctA)) * 31) + adn.hashCode(this.zzctB)) * 31) + adn.hashCode(this.zzctC)) * 31) + adn.hashCode(this.zzctD)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.name == null || this.name.equals(""))) {
            adh.zzl(1, this.name);
        }
        if (this.zzctA != null && this.zzctA.length > 0) {
            for (boolean zzk : this.zzctA) {
                adh.zzk(2, zzk);
            }
        }
        if (this.zzctB != null && this.zzctB.length > 0) {
            for (long zzb : this.zzctB) {
                adh.zzb(3, zzb);
            }
        }
        if (this.zzctC != null && this.zzctC.length > 0) {
            for (String str : this.zzctC) {
                if (str != null) {
                    adh.zzl(4, str);
                }
            }
        }
        if (this.zzctD != null && this.zzctD.length > 0) {
            for (adp adp : this.zzctD) {
                if (adp != null) {
                    adh.zza(5, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (!(this.name == null || this.name.equals(""))) {
            zzn += adh.zzm(1, this.name);
        }
        if (this.zzctA != null && this.zzctA.length > 0) {
            zzn = (zzn + (this.zzctA.length * 1)) + (this.zzctA.length * 1);
        }
        if (this.zzctB != null && this.zzctB.length > 0) {
            i = 0;
            for (long zzaP : this.zzctB) {
                i += adh.zzaP(zzaP);
            }
            zzn = (zzn + i) + (this.zzctB.length * 1);
        }
        if (this.zzctC != null && this.zzctC.length > 0) {
            i = 0;
            int i2 = 0;
            for (String str : this.zzctC) {
                if (str != null) {
                    i2++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzctD != null && this.zzctD.length > 0) {
            for (adp adp : this.zzctD) {
                if (adp != null) {
                    zzn += adh.zzb(5, adp);
                }
            }
        }
        return zzn;
    }
}
