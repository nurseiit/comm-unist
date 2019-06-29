package com.google.android.gms.internal;

import java.io.IOException;

public final class abp extends adj<abp> {
    public abl zzcnX;
    public abl zzcnY;
    public abl zzcnZ;
    public abn zzcoa;
    public abq[] zzcob;

    public abp() {
        this.zzcnX = null;
        this.zzcnY = null;
        this.zzcnZ = null;
        this.zzcoa = null;
        this.zzcob = abq.zzKL();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof abp)) {
            return false;
        }
        abp abp = (abp) obj;
        if (this.zzcnX == null) {
            if (abp.zzcnX != null) {
                return false;
            }
        } else if (!this.zzcnX.equals(abp.zzcnX)) {
            return false;
        }
        if (this.zzcnY == null) {
            if (abp.zzcnY != null) {
                return false;
            }
        } else if (!this.zzcnY.equals(abp.zzcnY)) {
            return false;
        }
        if (this.zzcnZ == null) {
            if (abp.zzcnZ != null) {
                return false;
            }
        } else if (!this.zzcnZ.equals(abp.zzcnZ)) {
            return false;
        }
        if (this.zzcoa == null) {
            if (abp.zzcoa != null) {
                return false;
            }
        } else if (!this.zzcoa.equals(abp.zzcoa)) {
            return false;
        }
        return !adn.equals(this.zzcob, abp.zzcob) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? abp.zzcso == null || abp.zzcso.isEmpty() : this.zzcso.equals(abp.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzcnX == null ? 0 : this.zzcnX.hashCode())) * 31) + (this.zzcnY == null ? 0 : this.zzcnY.hashCode())) * 31) + (this.zzcnZ == null ? 0 : this.zzcnZ.hashCode())) * 31) + (this.zzcoa == null ? 0 : this.zzcoa.hashCode())) * 31) + adn.hashCode(this.zzcob)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcnX != null) {
            adh.zza(1, this.zzcnX);
        }
        if (this.zzcnY != null) {
            adh.zza(2, this.zzcnY);
        }
        if (this.zzcnZ != null) {
            adh.zza(3, this.zzcnZ);
        }
        if (this.zzcoa != null) {
            adh.zza(4, this.zzcoa);
        }
        if (this.zzcob != null && this.zzcob.length > 0) {
            for (adp adp : this.zzcob) {
                if (adp != null) {
                    adh.zza(5, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcnX != null) {
            zzn += adh.zzb(1, this.zzcnX);
        }
        if (this.zzcnY != null) {
            zzn += adh.zzb(2, this.zzcnY);
        }
        if (this.zzcnZ != null) {
            zzn += adh.zzb(3, this.zzcnZ);
        }
        if (this.zzcoa != null) {
            zzn += adh.zzb(4, this.zzcoa);
        }
        if (this.zzcob != null && this.zzcob.length > 0) {
            for (adp adp : this.zzcob) {
                if (adp != null) {
                    zzn += adh.zzb(5, adp);
                }
            }
        }
        return zzn;
    }
}
