package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.util.Arrays;

public final class hh extends adj<hh> {
    public byte[] zzbTM;
    public String zzbTN;
    public double zzbTO;
    public float zzbTP;
    public long zzbTQ;
    public int zzbTR;
    public int zzbTS;
    public boolean zzbTT;
    public hf[] zzbTU;
    public hg[] zzbTV;
    public String[] zzbTW;
    public long[] zzbTX;
    public float[] zzbTY;
    public long zzbTZ;

    public hh() {
        this.zzbTM = ads.zzcsI;
        this.zzbTN = "";
        this.zzbTO = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzbTP = 0.0f;
        this.zzbTQ = 0;
        this.zzbTR = 0;
        this.zzbTS = 0;
        this.zzbTT = false;
        this.zzbTU = hf.zzEa();
        this.zzbTV = hg.zzEb();
        this.zzbTW = ads.EMPTY_STRING_ARRAY;
        this.zzbTX = ads.zzcsD;
        this.zzbTY = ads.zzcsE;
        this.zzbTZ = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hh)) {
            return false;
        }
        hh hhVar = (hh) obj;
        if (!Arrays.equals(this.zzbTM, hhVar.zzbTM)) {
            return false;
        }
        if (this.zzbTN == null) {
            if (hhVar.zzbTN != null) {
                return false;
            }
        } else if (!this.zzbTN.equals(hhVar.zzbTN)) {
            return false;
        }
        return (Double.doubleToLongBits(this.zzbTO) == Double.doubleToLongBits(hhVar.zzbTO) && Float.floatToIntBits(this.zzbTP) == Float.floatToIntBits(hhVar.zzbTP) && this.zzbTQ == hhVar.zzbTQ && this.zzbTR == hhVar.zzbTR && this.zzbTS == hhVar.zzbTS && this.zzbTT == hhVar.zzbTT && adn.equals(this.zzbTU, hhVar.zzbTU) && adn.equals(this.zzbTV, hhVar.zzbTV) && adn.equals(this.zzbTW, hhVar.zzbTW) && adn.equals(this.zzbTX, hhVar.zzbTX) && adn.equals(this.zzbTY, hhVar.zzbTY) && this.zzbTZ == hhVar.zzbTZ) ? (this.zzcso == null || this.zzcso.isEmpty()) ? hhVar.zzcso == null || hhVar.zzcso.isEmpty() : this.zzcso.equals(hhVar.zzcso) : false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzbTM)) * 31) + (this.zzbTN == null ? 0 : this.zzbTN.hashCode());
        long doubleToLongBits = Double.doubleToLongBits(this.zzbTO);
        hashCode = ((((((((((((((((((((((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + Float.floatToIntBits(this.zzbTP)) * 31) + ((int) (this.zzbTQ ^ (this.zzbTQ >>> 32)))) * 31) + this.zzbTR) * 31) + this.zzbTS) * 31) + (this.zzbTT ? 1231 : 1237)) * 31) + adn.hashCode(this.zzbTU)) * 31) + adn.hashCode(this.zzbTV)) * 31) + adn.hashCode(this.zzbTW)) * 31) + adn.hashCode(this.zzbTX)) * 31) + adn.hashCode(this.zzbTY)) * 31) + ((int) (this.zzbTZ ^ (this.zzbTZ >>> 32)))) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        int i;
        if (!Arrays.equals(this.zzbTM, ads.zzcsI)) {
            adh.zzb(1, this.zzbTM);
        }
        if (!(this.zzbTN == null || this.zzbTN.equals(""))) {
            adh.zzl(2, this.zzbTN);
        }
        if (Double.doubleToLongBits(this.zzbTO) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(3, this.zzbTO);
        }
        if (Float.floatToIntBits(this.zzbTP) != Float.floatToIntBits(0.0f)) {
            adh.zzc(4, this.zzbTP);
        }
        if (this.zzbTQ != 0) {
            adh.zzb(5, this.zzbTQ);
        }
        if (this.zzbTR != 0) {
            adh.zzr(6, this.zzbTR);
        }
        int i2 = 0;
        if (this.zzbTS != 0) {
            i = this.zzbTS;
            adh.zzt(7, 0);
            adh.zzcu(adh.zzcw(i));
        }
        if (this.zzbTT) {
            adh.zzk(8, this.zzbTT);
        }
        if (this.zzbTU != null && this.zzbTU.length > 0) {
            for (adp adp : this.zzbTU) {
                if (adp != null) {
                    adh.zza(9, adp);
                }
            }
        }
        if (this.zzbTV != null && this.zzbTV.length > 0) {
            for (adp adp2 : this.zzbTV) {
                if (adp2 != null) {
                    adh.zza(10, adp2);
                }
            }
        }
        if (this.zzbTW != null && this.zzbTW.length > 0) {
            for (String str : this.zzbTW) {
                if (str != null) {
                    adh.zzl(11, str);
                }
            }
        }
        if (this.zzbTX != null && this.zzbTX.length > 0) {
            for (long zzb : this.zzbTX) {
                adh.zzb(12, zzb);
            }
        }
        if (this.zzbTZ != 0) {
            adh.zzb(13, this.zzbTZ);
        }
        if (this.zzbTY != null && this.zzbTY.length > 0) {
            while (i2 < this.zzbTY.length) {
                adh.zzc(14, this.zzbTY[i2]);
                i2++;
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int zzn = super.zzn();
        if (!Arrays.equals(this.zzbTM, ads.zzcsI)) {
            zzn += adh.zzc(1, this.zzbTM);
        }
        if (!(this.zzbTN == null || this.zzbTN.equals(""))) {
            zzn += adh.zzm(2, this.zzbTN);
        }
        if (Double.doubleToLongBits(this.zzbTO) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(3) + 8;
        }
        if (Float.floatToIntBits(this.zzbTP) != Float.floatToIntBits(0.0f)) {
            zzn += adh.zzct(4) + 4;
        }
        if (this.zzbTQ != 0) {
            zzn += adh.zze(5, this.zzbTQ);
        }
        if (this.zzbTR != 0) {
            zzn += adh.zzs(6, this.zzbTR);
        }
        if (this.zzbTS != 0) {
            zzn += adh.zzct(7) + adh.zzcv(adh.zzcw(this.zzbTS));
        }
        if (this.zzbTT) {
            zzn += adh.zzct(8) + 1;
        }
        if (this.zzbTU != null && this.zzbTU.length > 0) {
            i = zzn;
            for (adp adp : this.zzbTU) {
                if (adp != null) {
                    i += adh.zzb(9, adp);
                }
            }
            zzn = i;
        }
        if (this.zzbTV != null && this.zzbTV.length > 0) {
            i = zzn;
            for (adp adp2 : this.zzbTV) {
                if (adp2 != null) {
                    i += adh.zzb(10, adp2);
                }
            }
            zzn = i;
        }
        if (this.zzbTW != null && this.zzbTW.length > 0) {
            int i2 = 0;
            int i3 = 0;
            for (String str : this.zzbTW) {
                if (str != null) {
                    i3++;
                    i2 += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i2) + (i3 * 1);
        }
        if (this.zzbTX != null && this.zzbTX.length > 0) {
            i = 0;
            for (long zzaP : this.zzbTX) {
                i += adh.zzaP(zzaP);
            }
            zzn = (zzn + i) + (this.zzbTX.length * 1);
        }
        if (this.zzbTZ != 0) {
            zzn += adh.zze(13, this.zzbTZ);
        }
        return (this.zzbTY == null || this.zzbTY.length <= 0) ? zzn : (zzn + (this.zzbTY.length * 4)) + (this.zzbTY.length * 1);
    }
}
