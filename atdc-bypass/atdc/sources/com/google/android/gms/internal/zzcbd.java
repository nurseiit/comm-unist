package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;

public final class zzcbd extends adj<zzcbd> {
    public String zzaIF;
    public boolean zzbgw;
    private long zzbgx;
    private double zzbgy;
    public zzcbc zzbgz;

    public zzcbd() {
        this.zzbgw = false;
        this.zzaIF = "";
        this.zzbgx = 0;
        this.zzbgy = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.zzbgz = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcbd)) {
            return false;
        }
        zzcbd zzcbd = (zzcbd) obj;
        if (this.zzbgw != zzcbd.zzbgw) {
            return false;
        }
        if (this.zzaIF == null) {
            if (zzcbd.zzaIF != null) {
                return false;
            }
        } else if (!this.zzaIF.equals(zzcbd.zzaIF)) {
            return false;
        }
        if (this.zzbgx != zzcbd.zzbgx || Double.doubleToLongBits(this.zzbgy) != Double.doubleToLongBits(zzcbd.zzbgy)) {
            return false;
        }
        if (this.zzbgz == null) {
            if (zzcbd.zzbgz != null) {
                return false;
            }
        } else if (!this.zzbgz.equals(zzcbd.zzbgz)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcbd.zzcso == null || zzcbd.zzcso.isEmpty() : this.zzcso.equals(zzcbd.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbgw ? 1231 : 1237)) * 31) + (this.zzaIF == null ? 0 : this.zzaIF.hashCode())) * 31) + ((int) (this.zzbgx ^ (this.zzbgx >>> 32)));
        long doubleToLongBits = Double.doubleToLongBits(this.zzbgy);
        hashCode = ((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + (this.zzbgz == null ? 0 : this.zzbgz.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbgw) {
            adh.zzk(1, this.zzbgw);
        }
        if (!(this.zzaIF == null || this.zzaIF.equals(""))) {
            adh.zzl(2, this.zzaIF);
        }
        if (this.zzbgx != 0) {
            adh.zzb(3, this.zzbgx);
        }
        if (Double.doubleToLongBits(this.zzbgy) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            adh.zza(4, this.zzbgy);
        }
        if (this.zzbgz != null) {
            adh.zza(5, this.zzbgz);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbgw) {
            zzn += adh.zzct(1) + 1;
        }
        if (!(this.zzaIF == null || this.zzaIF.equals(""))) {
            zzn += adh.zzm(2, this.zzaIF);
        }
        if (this.zzbgx != 0) {
            zzn += adh.zze(3, this.zzbgx);
        }
        if (Double.doubleToLongBits(this.zzbgy) != Double.doubleToLongBits(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            zzn += adh.zzct(4) + 8;
        }
        return this.zzbgz != null ? zzn + adh.zzb(5, this.zzbgz) : zzn;
    }
}
