package com.google.android.gms.internal;

import java.io.IOException;

public final class acy extends adj<acy> {
    private int zzcqq;

    public acy() {
        this.zzcqq = 0;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acy)) {
            return false;
        }
        acy acy = (acy) obj;
        return this.zzcqq != acy.zzcqq ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? acy.zzcso == null || acy.zzcso.isEmpty() : this.zzcso.equals(acy.zzcso);
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
