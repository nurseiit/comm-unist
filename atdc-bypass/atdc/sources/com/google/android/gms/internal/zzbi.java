package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbi extends adj<zzbi> {
    private int level;
    private int zzkx;
    private int zzky;

    public zzbi() {
        this.level = 1;
        this.zzkx = 0;
        this.zzky = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbi)) {
            return false;
        }
        zzbi zzbi = (zzbi) obj;
        return (this.level == zzbi.level && this.zzkx == zzbi.zzkx && this.zzky == zzbi.zzky) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbi.zzcso == null || zzbi.zzcso.isEmpty() : this.zzcso.equals(zzbi.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.level) * 31) + this.zzkx) * 31) + this.zzky) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.level != 1) {
            adh.zzr(1, this.level);
        }
        if (this.zzkx != 0) {
            adh.zzr(2, this.zzkx);
        }
        if (this.zzky != 0) {
            adh.zzr(3, this.zzky);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.level != 1) {
            zzn += adh.zzs(1, this.level);
        }
        if (this.zzkx != 0) {
            zzn += adh.zzs(2, this.zzkx);
        }
        return this.zzky != 0 ? zzn + adh.zzs(3, this.zzky) : zzn;
    }
}
