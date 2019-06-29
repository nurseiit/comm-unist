package com.google.android.gms.internal;

import java.io.IOException;

public final class il extends adj<il> {
    public String[] zzbUS;
    public int[] zzbUT;
    public byte[][] zzbUU;

    public il() {
        this.zzbUS = ads.EMPTY_STRING_ARRAY;
        this.zzbUT = ads.zzcsC;
        this.zzbUU = ads.zzcsH;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static il zzz(byte[] bArr) throws ado {
        return (il) adp.zza(new il(), bArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof il)) {
            return false;
        }
        il ilVar = (il) obj;
        return (adn.equals(this.zzbUS, ilVar.zzbUS) && adn.equals(this.zzbUT, ilVar.zzbUT) && adn.zza(this.zzbUU, ilVar.zzbUU)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? ilVar.zzcso == null || ilVar.zzcso.isEmpty() : this.zzcso.equals(ilVar.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzbUS)) * 31) + adn.hashCode(this.zzbUT)) * 31) + adn.zzc(this.zzbUU)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbUS != null && this.zzbUS.length > 0) {
            for (String str : this.zzbUS) {
                if (str != null) {
                    adh.zzl(1, str);
                }
            }
        }
        if (this.zzbUT != null && this.zzbUT.length > 0) {
            for (int zzr : this.zzbUT) {
                adh.zzr(2, zzr);
            }
        }
        if (this.zzbUU != null && this.zzbUU.length > 0) {
            for (byte[] bArr : this.zzbUU) {
                if (bArr != null) {
                    adh.zzb(3, bArr);
                }
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
        if (this.zzbUS != null && this.zzbUS.length > 0) {
            i = 0;
            i2 = 0;
            for (String str : this.zzbUS) {
                if (str != null) {
                    i2++;
                    i += adh.zzhQ(str);
                }
            }
            zzn = (zzn + i) + (i2 * 1);
        }
        if (this.zzbUT != null && this.zzbUT.length > 0) {
            i = 0;
            for (int i22 : this.zzbUT) {
                i += adh.zzcr(i22);
            }
            zzn = (zzn + i) + (this.zzbUT.length * 1);
        }
        if (this.zzbUU == null || this.zzbUU.length <= 0) {
            return zzn;
        }
        i3 = 0;
        i = 0;
        for (byte[] bArr : this.zzbUU) {
            if (bArr != null) {
                i++;
                i3 += adh.zzJ(bArr);
            }
        }
        return (zzn + i3) + (i * 1);
    }
}
