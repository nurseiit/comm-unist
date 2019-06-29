package com.google.android.gms.internal;

import java.io.IOException;

public final class acu extends adj<acu> {
    private int zzcqq;

    public acu() {
        this.zzcqq = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acu)) {
            return false;
        }
        acu acu = (acu) obj;
        return this.zzcqq != acu.zzcqq ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? acu.zzcso == null || acu.zzcso.isEmpty() : this.zzcso.equals(acu.zzcso);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + this.zzcqq) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcqq != 0) {
            adh.zzr(1, this.zzcqq);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        return this.zzcqq != 0 ? zzn + adh.zzs(1, this.zzcqq) : zzn;
    }
}
