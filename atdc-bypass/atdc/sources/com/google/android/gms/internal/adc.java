package com.google.android.gms.internal;

import java.io.IOException;

public final class adc extends adj<adc> {
    private int type;
    private long zzaTb;
    private long zzaTc;

    public adc() {
        this.type = 3;
        this.zzaTb = 0;
        this.zzaTc = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adc)) {
            return false;
        }
        adc adc = (adc) obj;
        return (this.type == adc.type && this.zzaTb == adc.zzaTb && this.zzaTc == adc.zzaTc) ? (this.zzcso == null || this.zzcso.isEmpty()) ? adc.zzcso == null || adc.zzcso.isEmpty() : this.zzcso.equals(adc.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31) + ((int) (this.zzaTb ^ (this.zzaTb >>> 32)))) * 31) + ((int) (this.zzaTc ^ (this.zzaTc >>> 32)))) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.type != 3) {
            adh.zzr(1, this.type);
        }
        if (this.zzaTb != 0) {
            adh.zzb(2, this.zzaTb);
        }
        if (this.zzaTc != 0) {
            adh.zzb(3, this.zzaTc);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.type != 3) {
            zzn += adh.zzs(1, this.type);
        }
        if (this.zzaTb != 0) {
            zzn += adh.zze(2, this.zzaTb);
        }
        return this.zzaTc != 0 ? zzn + adh.zze(3, this.zzaTc) : zzn;
    }
}
