package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class aej extends adj<aej> implements Cloneable {
    private String tag;
    private boolean zzccZ;
    private ael zzcmX;
    public long zzctQ;
    public long zzctR;
    private long zzctS;
    public int zzctT;
    private aek[] zzctU;
    private byte[] zzctV;
    private aeh zzctW;
    public byte[] zzctX;
    private String zzctY;
    private String zzctZ;
    private aeg zzcua;
    private String zzcub;
    public long zzcuc;
    private aei zzcud;
    public byte[] zzcue;
    private String zzcuf;
    private int zzcug;
    private int[] zzcuh;
    private long zzcui;
    public int zzrB;

    public aej() {
        this.zzctQ = 0;
        this.zzctR = 0;
        this.zzctS = 0;
        this.tag = "";
        this.zzctT = 0;
        this.zzrB = 0;
        this.zzccZ = false;
        this.zzctU = aek.zzMe();
        this.zzctV = ads.zzcsI;
        this.zzctW = null;
        this.zzctX = ads.zzcsI;
        this.zzctY = "";
        this.zzctZ = "";
        this.zzcua = null;
        this.zzcub = "";
        this.zzcuc = 180000;
        this.zzcud = null;
        this.zzcue = ads.zzcsI;
        this.zzcuf = "";
        this.zzcug = 0;
        this.zzcuh = ads.zzcsC;
        this.zzcui = 0;
        this.zzcmX = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    private final aej zzMd() {
        try {
            aej aej = (aej) super.clone();
            if (this.zzctU != null && this.zzctU.length > 0) {
                aej.zzctU = new aek[this.zzctU.length];
                for (int i = 0; i < this.zzctU.length; i++) {
                    if (this.zzctU[i] != null) {
                        aej.zzctU[i] = (aek) this.zzctU[i].clone();
                    }
                }
            }
            if (this.zzctW != null) {
                aej.zzctW = (aeh) this.zzctW.clone();
            }
            if (this.zzcua != null) {
                aej.zzcua = (aeg) this.zzcua.clone();
            }
            if (this.zzcud != null) {
                aej.zzcud = (aei) this.zzcud.clone();
            }
            if (this.zzcuh != null && this.zzcuh.length > 0) {
                aej.zzcuh = (int[]) this.zzcuh.clone();
            }
            if (this.zzcmX != null) {
                aej.zzcmX = (ael) this.zzcmX.clone();
            }
            return aej;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzMd();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aej)) {
            return false;
        }
        aej aej = (aej) obj;
        if (this.zzctQ != aej.zzctQ || this.zzctR != aej.zzctR || this.zzctS != aej.zzctS) {
            return false;
        }
        if (this.tag == null) {
            if (aej.tag != null) {
                return false;
            }
        } else if (!this.tag.equals(aej.tag)) {
            return false;
        }
        if (this.zzctT != aej.zzctT || this.zzrB != aej.zzrB || this.zzccZ != aej.zzccZ || !adn.equals(this.zzctU, aej.zzctU) || !Arrays.equals(this.zzctV, aej.zzctV)) {
            return false;
        }
        if (this.zzctW == null) {
            if (aej.zzctW != null) {
                return false;
            }
        } else if (!this.zzctW.equals(aej.zzctW)) {
            return false;
        }
        if (!Arrays.equals(this.zzctX, aej.zzctX)) {
            return false;
        }
        if (this.zzctY == null) {
            if (aej.zzctY != null) {
                return false;
            }
        } else if (!this.zzctY.equals(aej.zzctY)) {
            return false;
        }
        if (this.zzctZ == null) {
            if (aej.zzctZ != null) {
                return false;
            }
        } else if (!this.zzctZ.equals(aej.zzctZ)) {
            return false;
        }
        if (this.zzcua == null) {
            if (aej.zzcua != null) {
                return false;
            }
        } else if (!this.zzcua.equals(aej.zzcua)) {
            return false;
        }
        if (this.zzcub == null) {
            if (aej.zzcub != null) {
                return false;
            }
        } else if (!this.zzcub.equals(aej.zzcub)) {
            return false;
        }
        if (this.zzcuc != aej.zzcuc) {
            return false;
        }
        if (this.zzcud == null) {
            if (aej.zzcud != null) {
                return false;
            }
        } else if (!this.zzcud.equals(aej.zzcud)) {
            return false;
        }
        if (!Arrays.equals(this.zzcue, aej.zzcue)) {
            return false;
        }
        if (this.zzcuf == null) {
            if (aej.zzcuf != null) {
                return false;
            }
        } else if (!this.zzcuf.equals(aej.zzcuf)) {
            return false;
        }
        if (this.zzcug != aej.zzcug || !adn.equals(this.zzcuh, aej.zzcuh) || this.zzcui != aej.zzcui) {
            return false;
        }
        if (this.zzcmX == null) {
            if (aej.zzcmX != null) {
                return false;
            }
        } else if (!this.zzcmX.equals(aej.zzcmX)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? aej.zzcso == null || aej.zzcso.isEmpty() : this.zzcso.equals(aej.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((((((((((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzctQ ^ (this.zzctQ >>> 32)))) * 31) + ((int) (this.zzctR ^ (this.zzctR >>> 32)))) * 31) + ((int) (this.zzctS ^ (this.zzctS >>> 32)))) * 31) + (this.tag == null ? 0 : this.tag.hashCode())) * 31) + this.zzctT) * 31) + this.zzrB) * 31) + (this.zzccZ ? 1231 : 1237)) * 31) + adn.hashCode(this.zzctU)) * 31) + Arrays.hashCode(this.zzctV)) * 31) + (this.zzctW == null ? 0 : this.zzctW.hashCode())) * 31) + Arrays.hashCode(this.zzctX)) * 31) + (this.zzctY == null ? 0 : this.zzctY.hashCode())) * 31) + (this.zzctZ == null ? 0 : this.zzctZ.hashCode())) * 31) + (this.zzcua == null ? 0 : this.zzcua.hashCode())) * 31) + (this.zzcub == null ? 0 : this.zzcub.hashCode())) * 31) + ((int) (this.zzcuc ^ (this.zzcuc >>> 32)))) * 31) + (this.zzcud == null ? 0 : this.zzcud.hashCode())) * 31) + Arrays.hashCode(this.zzcue)) * 31) + (this.zzcuf == null ? 0 : this.zzcuf.hashCode())) * 31) + this.zzcug) * 31) + adn.hashCode(this.zzcuh)) * 31) + ((int) (this.zzcui ^ (this.zzcui >>> 32)))) * 31) + (this.zzcmX == null ? 0 : this.zzcmX.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final /* synthetic */ adj zzLN() throws CloneNotSupportedException {
        return (aej) clone();
    }

    public final /* synthetic */ adp zzLO() throws CloneNotSupportedException {
        return (aej) clone();
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzctQ != 0) {
            adh.zzb(1, this.zzctQ);
        }
        if (!(this.tag == null || this.tag.equals(""))) {
            adh.zzl(2, this.tag);
        }
        if (this.zzctU != null && this.zzctU.length > 0) {
            for (adp adp : this.zzctU) {
                if (adp != null) {
                    adh.zza(3, adp);
                }
            }
        }
        if (!Arrays.equals(this.zzctV, ads.zzcsI)) {
            adh.zzb(4, this.zzctV);
        }
        if (!Arrays.equals(this.zzctX, ads.zzcsI)) {
            adh.zzb(6, this.zzctX);
        }
        if (this.zzcua != null) {
            adh.zza(7, this.zzcua);
        }
        if (!(this.zzctY == null || this.zzctY.equals(""))) {
            adh.zzl(8, this.zzctY);
        }
        if (this.zzctW != null) {
            adh.zza(9, this.zzctW);
        }
        if (this.zzccZ) {
            adh.zzk(10, this.zzccZ);
        }
        if (this.zzctT != 0) {
            adh.zzr(11, this.zzctT);
        }
        if (this.zzrB != 0) {
            adh.zzr(12, this.zzrB);
        }
        if (!(this.zzctZ == null || this.zzctZ.equals(""))) {
            adh.zzl(13, this.zzctZ);
        }
        if (!(this.zzcub == null || this.zzcub.equals(""))) {
            adh.zzl(14, this.zzcub);
        }
        if (this.zzcuc != 180000) {
            adh.zzd(15, this.zzcuc);
        }
        if (this.zzcud != null) {
            adh.zza(16, this.zzcud);
        }
        if (this.zzctR != 0) {
            adh.zzb(17, this.zzctR);
        }
        if (!Arrays.equals(this.zzcue, ads.zzcsI)) {
            adh.zzb(18, this.zzcue);
        }
        if (this.zzcug != 0) {
            adh.zzr(19, this.zzcug);
        }
        if (this.zzcuh != null && this.zzcuh.length > 0) {
            for (int zzr : this.zzcuh) {
                adh.zzr(20, zzr);
            }
        }
        if (this.zzctS != 0) {
            adh.zzb(21, this.zzctS);
        }
        if (this.zzcui != 0) {
            adh.zzb(22, this.zzcui);
        }
        if (this.zzcmX != null) {
            adh.zza(23, this.zzcmX);
        }
        if (!(this.zzcuf == null || this.zzcuf.equals(""))) {
            adh.zzl(24, this.zzcuf);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (this.zzctQ != 0) {
            zzn += adh.zze(1, this.zzctQ);
        }
        if (!(this.tag == null || this.tag.equals(""))) {
            zzn += adh.zzm(2, this.tag);
        }
        if (this.zzctU != null && this.zzctU.length > 0) {
            i = zzn;
            for (adp adp : this.zzctU) {
                if (adp != null) {
                    i += adh.zzb(3, adp);
                }
            }
            zzn = i;
        }
        if (!Arrays.equals(this.zzctV, ads.zzcsI)) {
            zzn += adh.zzc(4, this.zzctV);
        }
        if (!Arrays.equals(this.zzctX, ads.zzcsI)) {
            zzn += adh.zzc(6, this.zzctX);
        }
        if (this.zzcua != null) {
            zzn += adh.zzb(7, this.zzcua);
        }
        if (!(this.zzctY == null || this.zzctY.equals(""))) {
            zzn += adh.zzm(8, this.zzctY);
        }
        if (this.zzctW != null) {
            zzn += adh.zzb(9, this.zzctW);
        }
        if (this.zzccZ) {
            zzn += adh.zzct(10) + 1;
        }
        if (this.zzctT != 0) {
            zzn += adh.zzs(11, this.zzctT);
        }
        if (this.zzrB != 0) {
            zzn += adh.zzs(12, this.zzrB);
        }
        if (!(this.zzctZ == null || this.zzctZ.equals(""))) {
            zzn += adh.zzm(13, this.zzctZ);
        }
        if (!(this.zzcub == null || this.zzcub.equals(""))) {
            zzn += adh.zzm(14, this.zzcub);
        }
        if (this.zzcuc != 180000) {
            zzn += adh.zzf(15, this.zzcuc);
        }
        if (this.zzcud != null) {
            zzn += adh.zzb(16, this.zzcud);
        }
        if (this.zzctR != 0) {
            zzn += adh.zze(17, this.zzctR);
        }
        if (!Arrays.equals(this.zzcue, ads.zzcsI)) {
            zzn += adh.zzc(18, this.zzcue);
        }
        if (this.zzcug != 0) {
            zzn += adh.zzs(19, this.zzcug);
        }
        if (this.zzcuh != null && this.zzcuh.length > 0) {
            int i2 = 0;
            for (int i3 : this.zzcuh) {
                i2 += adh.zzcr(i3);
            }
            zzn = (zzn + i2) + (this.zzcuh.length * 2);
        }
        if (this.zzctS != 0) {
            zzn += adh.zze(21, this.zzctS);
        }
        if (this.zzcui != 0) {
            zzn += adh.zze(22, this.zzcui);
        }
        if (this.zzcmX != null) {
            zzn += adh.zzb(23, this.zzcmX);
        }
        return (this.zzcuf == null || this.zzcuf.equals("")) ? zzn : zzn + adh.zzm(24, this.zzcuf);
    }
}
