package com.google.android.gms.internal;

import java.io.IOException;

public final class ada extends adj<ada> {
    private String zzaLx;

    public ada() {
        this.zzaLx = "";
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ada)) {
            return false;
        }
        ada ada = (ada) obj;
        if (this.zzaLx == null) {
            if (ada.zzaLx != null) {
                return false;
            }
        } else if (!this.zzaLx.equals(ada.zzaLx)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? ada.zzcso == null || ada.zzcso.isEmpty() : this.zzcso.equals(ada.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + (this.zzaLx == null ? 0 : this.zzaLx.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.zzaLx == null || this.zzaLx.equals(""))) {
            adh.zzl(1, this.zzaLx);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        return (this.zzaLx == null || this.zzaLx.equals("")) ? zzn : zzn + adh.zzm(1, this.zzaLx);
    }
}
