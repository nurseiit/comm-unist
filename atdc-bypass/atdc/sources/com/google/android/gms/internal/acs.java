package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;

public final class acs extends adj<acs> {
    public int zzcqq;
    public long zzcqr;
    public int zzcrm;
    public int zzcrn;
    public int zzcro;
    public double zzcrp;
    public double zzcrq;
    public long zzcrr;

    public acs() {
        this.zzcqq = 0;
        this.zzcrm = 0;
        this.zzcqr = 0;
        this.zzcrn = 0;
        this.zzcro = 0;
        this.zzcrp = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzcrq = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzcrr = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acs)) {
            return false;
        }
        acs acs = (acs) obj;
        return (this.zzcqq == acs.zzcqq && this.zzcrm == acs.zzcrm && this.zzcqr == acs.zzcqr && this.zzcrn == acs.zzcrn && this.zzcro == acs.zzcro && Double.doubleToLongBits(this.zzcrp) == Double.doubleToLongBits(acs.zzcrp) && Double.doubleToLongBits(this.zzcrq) == Double.doubleToLongBits(acs.zzcrq) && this.zzcrr == acs.zzcrr) ? (this.zzcso == null || this.zzcso.isEmpty()) ? acs.zzcso == null || acs.zzcso.isEmpty() : this.zzcso.equals(acs.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = ((((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + this.zzcrm) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + this.zzcrn) * 31) + this.zzcro;
        long doubleToLongBits = Double.doubleToLongBits(this.zzcrp);
        hashCode = (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        doubleToLongBits = Double.doubleToLongBits(this.zzcrq);
        hashCode = ((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (this.zzcrr ^ (this.zzcrr >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcrm != 0) {
            adh.zzr(2, this.zzcrm);
        }
        if (this.zzcqr != 0) {
            adh.zzb(3, this.zzcqr);
        }
        if (this.zzcrn != 0) {
            adh.zzr(4, this.zzcrn);
        }
        if (this.zzcro != 0) {
            adh.zzr(5, this.zzcro);
        }
        if (Double.doubleToLongBits(this.zzcrp) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(6, this.zzcrp);
        }
        if (Double.doubleToLongBits(this.zzcrq) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(7, this.zzcrq);
        }
        if (this.zzcrr != 0) {
            adh.zzb(8, this.zzcrr);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (this.zzcrm != 0) {
            zzn += adh.zzs(2, this.zzcrm);
        }
        if (this.zzcqr != 0) {
            zzn += adh.zze(3, this.zzcqr);
        }
        if (this.zzcrn != 0) {
            zzn += adh.zzs(4, this.zzcrn);
        }
        if (this.zzcro != 0) {
            zzn += adh.zzs(5, this.zzcro);
        }
        if (Double.doubleToLongBits(this.zzcrp) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(6) + 8;
        }
        if (Double.doubleToLongBits(this.zzcrq) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(7) + 8;
        }
        return this.zzcrr != 0 ? zzn + adh.zze(8, this.zzcrr) : zzn;
    }
}
