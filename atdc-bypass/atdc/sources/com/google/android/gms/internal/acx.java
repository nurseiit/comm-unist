package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;

public final class acx extends adj<acx> {
    private int zzcqq;
    private long zzcqr;
    private double zzcrA;
    private int[] zzcrB;
    private double zzcrz;

    public acx() {
        this.zzcqq = 0;
        this.zzcrz = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzcrA = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzcqr = 0;
        this.zzcrB = ads.zzcsC;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acx)) {
            return false;
        }
        acx acx = (acx) obj;
        return (this.zzcqq == acx.zzcqq && Double.doubleToLongBits(this.zzcrz) == Double.doubleToLongBits(acx.zzcrz) && Double.doubleToLongBits(this.zzcrA) == Double.doubleToLongBits(acx.zzcrA) && this.zzcqr == acx.zzcqr && adn.equals(this.zzcrB, acx.zzcrB)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? acx.zzcso == null || acx.zzcso.isEmpty() : this.zzcso.equals(acx.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = ((getClass().getName().hashCode() + 527) * 31) + this.zzcqq;
        long doubleToLongBits = Double.doubleToLongBits(this.zzcrz);
        hashCode = (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        doubleToLongBits = Double.doubleToLongBits(this.zzcrA);
        hashCode = ((((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + adn.hashCode(this.zzcrB)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (Double.doubleToLongBits(this.zzcrz) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(2, this.zzcrz);
        }
        if (Double.doubleToLongBits(this.zzcrA) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(3, this.zzcrA);
        }
        if (this.zzcqr != 0) {
            adh.zzb(4, this.zzcqr);
        }
        if (this.zzcrB != null && this.zzcrB.length > 0) {
            for (int zzr : this.zzcrB) {
                adh.zzr(5, zzr);
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (Double.doubleToLongBits(this.zzcrz) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(2) + 8;
        }
        if (Double.doubleToLongBits(this.zzcrA) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(3) + 8;
        }
        if (this.zzcqr != 0) {
            zzn += adh.zze(4, this.zzcqr);
        }
        if (this.zzcrB == null || this.zzcrB.length <= 0) {
            return zzn;
        }
        int i = 0;
        for (int zzcr : this.zzcrB) {
            i += adh.zzcr(zzcr);
        }
        return (zzn + i) + (this.zzcrB.length * 1);
    }
}
