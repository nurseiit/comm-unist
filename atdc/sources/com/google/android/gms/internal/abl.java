package com.google.android.gms.internal;

import java.io.IOException;

public final class abl extends adj<abl> {
    public long timestamp;
    public abo[] zzcnO;
    public byte[][] zzcnP;

    public abl() {
        this.zzcnO = abo.zzKK();
        this.timestamp = 0;
        this.zzcnP = ads.zzcsH;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof abl)) {
            return false;
        }
        abl abl = (abl) obj;
        return (adn.equals(this.zzcnO, abl.zzcnO) && this.timestamp == abl.timestamp && adn.zza(this.zzcnP, abl.zzcnP)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? abl.zzcso == null || abl.zzcso.isEmpty() : this.zzcso.equals(abl.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzcnO)) * 31) + ((int) (this.timestamp ^ (this.timestamp >>> 32)))) * 31) + adn.zzc(this.zzcnP)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcnO != null && this.zzcnO.length > 0) {
            for (adp adp : this.zzcnO) {
                if (adp != null) {
                    adh.zza(1, adp);
                }
            }
        }
        if (this.timestamp != 0) {
            adh.zzc(2, this.timestamp);
        }
        if (this.zzcnP != null && this.zzcnP.length > 0) {
            for (byte[] bArr : this.zzcnP) {
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
        int zzn = super.zzn();
        if (this.zzcnO != null && this.zzcnO.length > 0) {
            i = zzn;
            for (adp adp : this.zzcnO) {
                if (adp != null) {
                    i += adh.zzb(1, adp);
                }
            }
            zzn = i;
        }
        if (this.timestamp != 0) {
            zzn += adh.zzct(2) + 8;
        }
        if (this.zzcnP == null || this.zzcnP.length <= 0) {
            return zzn;
        }
        i = 0;
        int i2 = 0;
        for (byte[] bArr : this.zzcnP) {
            if (bArr != null) {
                i2++;
                i += adh.zzJ(bArr);
            }
        }
        return (zzn + i) + (i2 * 1);
    }
}
