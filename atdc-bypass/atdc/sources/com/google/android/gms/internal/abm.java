package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class abm extends adj<abm> {
    private static volatile abm[] zzcnQ;
    public String key;
    public byte[] zzcnR;

    public abm() {
        this.key = "";
        this.zzcnR = ads.zzcsI;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static abm[] zzKJ() {
        if (zzcnQ == null) {
            synchronized (adn.zzcsw) {
                if (zzcnQ == null) {
                    zzcnQ = new abm[0];
                }
            }
        }
        return zzcnQ;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof abm)) {
            return false;
        }
        abm abm = (abm) obj;
        if (this.key == null) {
            if (abm.key != null) {
                return false;
            }
        } else if (!this.key.equals(abm.key)) {
            return false;
        }
        return !Arrays.equals(this.zzcnR, abm.zzcnR) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? abm.zzcso == null || abm.zzcso.isEmpty() : this.zzcso.equals(abm.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.key == null ? 0 : this.key.hashCode())) * 31) + Arrays.hashCode(this.zzcnR)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.key == null || this.key.equals(""))) {
            adh.zzl(1, this.key);
        }
        if (!Arrays.equals(this.zzcnR, ads.zzcsI)) {
            adh.zzb(2, this.zzcnR);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.key == null || this.key.equals(""))) {
            zzn += adh.zzm(1, this.key);
        }
        return !Arrays.equals(this.zzcnR, ads.zzcsI) ? zzn + adh.zzc(2, this.zzcnR) : zzn;
    }
}
