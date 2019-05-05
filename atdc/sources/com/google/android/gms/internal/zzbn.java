package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbn extends adj<zzbn> {
    public String version;
    private String[] zzkN;
    public String[] zzkO;
    public zzbr[] zzkP;
    public zzbm[] zzkQ;
    public zzbj[] zzkR;
    public zzbj[] zzkS;
    public zzbj[] zzkT;
    public zzbo[] zzkU;
    private String zzkV;
    private String zzkW;
    private String zzkX;
    private zzbi zzkY;
    private float zzkZ;
    private boolean zzla;
    private String[] zzlb;
    public int zzlc;

    public zzbn() {
        this.zzkN = ads.EMPTY_STRING_ARRAY;
        this.zzkO = ads.EMPTY_STRING_ARRAY;
        this.zzkP = zzbr.zzu();
        this.zzkQ = zzbm.zzr();
        this.zzkR = zzbj.zzp();
        this.zzkS = zzbj.zzp();
        this.zzkT = zzbj.zzp();
        this.zzkU = zzbo.zzs();
        this.zzkV = "";
        this.zzkW = "";
        this.zzkX = "0";
        this.version = "";
        this.zzkY = null;
        this.zzkZ = 0.0f;
        this.zzla = false;
        this.zzlb = ads.EMPTY_STRING_ARRAY;
        this.zzlc = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbn)) {
            return false;
        }
        zzbn zzbn = (zzbn) obj;
        if (!adn.equals(this.zzkN, zzbn.zzkN) || !adn.equals(this.zzkO, zzbn.zzkO) || !adn.equals(this.zzkP, zzbn.zzkP) || !adn.equals(this.zzkQ, zzbn.zzkQ) || !adn.equals(this.zzkR, zzbn.zzkR) || !adn.equals(this.zzkS, zzbn.zzkS) || !adn.equals(this.zzkT, zzbn.zzkT) || !adn.equals(this.zzkU, zzbn.zzkU)) {
            return false;
        }
        if (this.zzkV == null) {
            if (zzbn.zzkV != null) {
                return false;
            }
        } else if (!this.zzkV.equals(zzbn.zzkV)) {
            return false;
        }
        if (this.zzkW == null) {
            if (zzbn.zzkW != null) {
                return false;
            }
        } else if (!this.zzkW.equals(zzbn.zzkW)) {
            return false;
        }
        if (this.zzkX == null) {
            if (zzbn.zzkX != null) {
                return false;
            }
        } else if (!this.zzkX.equals(zzbn.zzkX)) {
            return false;
        }
        if (this.version == null) {
            if (zzbn.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzbn.version)) {
            return false;
        }
        if (this.zzkY == null) {
            if (zzbn.zzkY != null) {
                return false;
            }
        } else if (!this.zzkY.equals(zzbn.zzkY)) {
            return false;
        }
        return (Float.floatToIntBits(this.zzkZ) == Float.floatToIntBits(zzbn.zzkZ) && this.zzla == zzbn.zzla && adn.equals(this.zzlb, zzbn.zzlb) && this.zzlc == zzbn.zzlc) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbn.zzcso == null || zzbn.zzcso.isEmpty() : this.zzcso.equals(zzbn.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzkN)) * 31) + adn.hashCode(this.zzkO)) * 31) + adn.hashCode(this.zzkP)) * 31) + adn.hashCode(this.zzkQ)) * 31) + adn.hashCode(this.zzkR)) * 31) + adn.hashCode(this.zzkS)) * 31) + adn.hashCode(this.zzkT)) * 31) + adn.hashCode(this.zzkU)) * 31) + (this.zzkV == null ? 0 : this.zzkV.hashCode())) * 31) + (this.zzkW == null ? 0 : this.zzkW.hashCode())) * 31) + (this.zzkX == null ? 0 : this.zzkX.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode())) * 31) + (this.zzkY == null ? 0 : this.zzkY.hashCode())) * 31) + Float.floatToIntBits(this.zzkZ)) * 31) + (this.zzla ? 1231 : 1237)) * 31) + adn.hashCode(this.zzlb)) * 31) + this.zzlc) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzkO != null && this.zzkO.length > 0) {
            for (String str : this.zzkO) {
                if (str != null) {
                    adh.zzl(1, str);
                }
            }
        }
        if (this.zzkP != null && this.zzkP.length > 0) {
            for (adp adp : this.zzkP) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        if (this.zzkQ != null && this.zzkQ.length > 0) {
            for (adp adp2 : this.zzkQ) {
                if (adp2 != null) {
                    adh.zza(3, adp2);
                }
            }
        }
        if (this.zzkR != null && this.zzkR.length > 0) {
            for (adp adp22 : this.zzkR) {
                if (adp22 != null) {
                    adh.zza(4, adp22);
                }
            }
        }
        if (this.zzkS != null && this.zzkS.length > 0) {
            for (adp adp222 : this.zzkS) {
                if (adp222 != null) {
                    adh.zza(5, adp222);
                }
            }
        }
        if (this.zzkT != null && this.zzkT.length > 0) {
            for (adp adp2222 : this.zzkT) {
                if (adp2222 != null) {
                    adh.zza(6, adp2222);
                }
            }
        }
        if (this.zzkU != null && this.zzkU.length > 0) {
            for (adp adp22222 : this.zzkU) {
                if (adp22222 != null) {
                    adh.zza(7, adp22222);
                }
            }
        }
        if (!(this.zzkV == null || this.zzkV.equals(""))) {
            adh.zzl(9, this.zzkV);
        }
        if (!(this.zzkW == null || this.zzkW.equals(""))) {
            adh.zzl(10, this.zzkW);
        }
        if (!(this.zzkX == null || this.zzkX.equals("0"))) {
            adh.zzl(12, this.zzkX);
        }
        if (!(this.version == null || this.version.equals(""))) {
            adh.zzl(13, this.version);
        }
        if (this.zzkY != null) {
            adh.zza(14, this.zzkY);
        }
        if (Float.floatToIntBits(this.zzkZ) != Float.floatToIntBits(0.0f)) {
            adh.zzc(15, this.zzkZ);
        }
        if (this.zzlb != null && this.zzlb.length > 0) {
            for (String str2 : this.zzlb) {
                if (str2 != null) {
                    adh.zzl(16, str2);
                }
            }
        }
        if (this.zzlc != 0) {
            adh.zzr(17, this.zzlc);
        }
        if (this.zzla) {
            adh.zzk(18, this.zzla);
        }
        if (this.zzkN != null && this.zzkN.length > 0) {
            for (String str3 : this.zzkN) {
                if (str3 != null) {
                    adh.zzl(19, str3);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int zzn = super.zzn();
        if (this.zzkO != null && this.zzkO.length > 0) {
            int i3 = 0;
            i = 0;
            for (String str : this.zzkO) {
                if (str != null) {
                    i++;
                    i3 += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i3) + (i * 1);
        }
        if (this.zzkP != null && this.zzkP.length > 0) {
            i2 = zzn;
            for (adp adp : this.zzkP) {
                if (adp != null) {
                    i2 += adh.zzb(2, adp);
                }
            }
            zzn = i2;
        }
        if (this.zzkQ != null && this.zzkQ.length > 0) {
            i2 = zzn;
            for (adp adp2 : this.zzkQ) {
                if (adp2 != null) {
                    i2 += adh.zzb(3, adp2);
                }
            }
            zzn = i2;
        }
        if (this.zzkR != null && this.zzkR.length > 0) {
            i2 = zzn;
            for (adp adp3 : this.zzkR) {
                if (adp3 != null) {
                    i2 += adh.zzb(4, adp3);
                }
            }
            zzn = i2;
        }
        if (this.zzkS != null && this.zzkS.length > 0) {
            i2 = zzn;
            for (adp adp32 : this.zzkS) {
                if (adp32 != null) {
                    i2 += adh.zzb(5, adp32);
                }
            }
            zzn = i2;
        }
        if (this.zzkT != null && this.zzkT.length > 0) {
            i2 = zzn;
            for (adp adp322 : this.zzkT) {
                if (adp322 != null) {
                    i2 += adh.zzb(6, adp322);
                }
            }
            zzn = i2;
        }
        if (this.zzkU != null && this.zzkU.length > 0) {
            i2 = zzn;
            for (adp adp3222 : this.zzkU) {
                if (adp3222 != null) {
                    i2 += adh.zzb(7, adp3222);
                }
            }
            zzn = i2;
        }
        if (!(this.zzkV == null || this.zzkV.equals(""))) {
            zzn += adh.zzm(9, this.zzkV);
        }
        if (!(this.zzkW == null || this.zzkW.equals(""))) {
            zzn += adh.zzm(10, this.zzkW);
        }
        if (!(this.zzkX == null || this.zzkX.equals("0"))) {
            zzn += adh.zzm(12, this.zzkX);
        }
        if (!(this.version == null || this.version.equals(""))) {
            zzn += adh.zzm(13, this.version);
        }
        if (this.zzkY != null) {
            zzn += adh.zzb(14, this.zzkY);
        }
        if (Float.floatToIntBits(this.zzkZ) != Float.floatToIntBits(0.0f)) {
            zzn += adh.zzct(15) + 4;
        }
        if (this.zzlb != null && this.zzlb.length > 0) {
            i = 0;
            int i4 = 0;
            for (String str2 : this.zzlb) {
                if (str2 != null) {
                    i4++;
                    i += adh.zzhQ(str2);
                }
            }
            zzn = (zzn + i) + (i4 * 2);
        }
        if (this.zzlc != 0) {
            zzn += adh.zzs(17, this.zzlc);
        }
        if (this.zzla) {
            zzn += adh.zzct(18) + 1;
        }
        if (this.zzkN == null || this.zzkN.length <= 0) {
            return zzn;
        }
        i2 = 0;
        i = 0;
        for (String str3 : this.zzkN) {
            if (str3 != null) {
                i++;
                i2 += adh.zzhQ(str3);
            }
        }
        return (zzn + i2) + (i * 2);
    }
}
