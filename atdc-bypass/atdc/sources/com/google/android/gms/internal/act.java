package com.google.android.gms.internal;

import java.io.IOException;

public final class act extends adj<act> {
    private int zzcqq;
    private long zzcqr;
    private int[] zzcrs;
    private int[] zzcrt;

    public act() {
        this.zzcqq = 0;
        this.zzcqr = 0;
        this.zzcrs = ads.zzcsC;
        this.zzcrt = ads.zzcsC;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof act)) {
            return false;
        }
        act act = (act) obj;
        return (this.zzcqq == act.zzcqq && this.zzcqr == act.zzcqr && adn.equals(this.zzcrs, act.zzcrs) && adn.equals(this.zzcrt, act.zzcrt)) ? (this.zzcso == null || this.zzcso.isEmpty()) ? act.zzcso == null || act.zzcso.isEmpty() : this.zzcso.equals(act.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31) + ((int) (this.zzcqr ^ (this.zzcqr >>> 32)))) * 31) + adn.hashCode(this.zzcrs)) * 31) + adn.hashCode(this.zzcrt)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            adh.zzb(2, this.zzcqr);
        }
        if (this.zzcrs != null && this.zzcrs.length > 0) {
            for (int zzr : this.zzcrs) {
                adh.zzr(3, zzr);
            }
        }
        if (this.zzcrt != null && this.zzcrt.length > 0) {
            for (int zzr2 : this.zzcrt) {
                adh.zzr(4, zzr2);
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int i;
        int i2;
        int zzn = super.zzn();
        if (this.zzcqq != 0) {
            zzn += adh.zzs(1, this.zzcqq);
        }
        if (this.zzcqr != 0) {
            zzn += adh.zze(2, this.zzcqr);
        }
        if (this.zzcrs != null && this.zzcrs.length > 0) {
            i = 0;
            for (int zzcr : this.zzcrs) {
                i += adh.zzcr(zzcr);
            }
            zzn = (zzn + i) + (this.zzcrs.length * 1);
        }
        if (this.zzcrt == null || this.zzcrt.length <= 0) {
            return zzn;
        }
        i2 = 0;
        for (int i3 : this.zzcrt) {
            i2 += adh.zzcr(i3);
        }
        return (zzn + i2) + (this.zzcrt.length * 1);
    }
}
