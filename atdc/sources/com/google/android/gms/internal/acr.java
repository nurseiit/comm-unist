package com.google.android.gms.internal;

import java.io.IOException;

public final class acr extends adj<acr> {
    private String zzcrj;
    private String zzcrk;
    private String zzcrl;

    public acr() {
        this.zzcrj = "";
        this.zzcrk = "";
        this.zzcrl = "";
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof acr)) {
            return false;
        }
        acr acr = (acr) obj;
        if (this.zzcrj == null) {
            if (acr.zzcrj != null) {
                return false;
            }
        } else if (!this.zzcrj.equals(acr.zzcrj)) {
            return false;
        }
        if (this.zzcrk == null) {
            if (acr.zzcrk != null) {
                return false;
            }
        } else if (!this.zzcrk.equals(acr.zzcrk)) {
            return false;
        }
        if (this.zzcrl == null) {
            if (acr.zzcrl != null) {
                return false;
            }
        } else if (!this.zzcrl.equals(acr.zzcrl)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? acr.zzcso == null || acr.zzcso.isEmpty() : this.zzcso.equals(acr.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + (this.zzcrj == null ? 0 : this.zzcrj.hashCode())) * 31) + (this.zzcrk == null ? 0 : this.zzcrk.hashCode())) * 31) + (this.zzcrl == null ? 0 : this.zzcrl.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.zzcrj == null || this.zzcrj.equals(""))) {
            adh.zzl(1, this.zzcrj);
        }
        if (!(this.zzcrk == null || this.zzcrk.equals(""))) {
            adh.zzl(2, this.zzcrk);
        }
        if (!(this.zzcrl == null || this.zzcrl.equals(""))) {
            adh.zzl(3, this.zzcrl);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.zzcrj == null || this.zzcrj.equals(""))) {
            zzn += adh.zzm(1, this.zzcrj);
        }
        if (!(this.zzcrk == null || this.zzcrk.equals(""))) {
            zzn += adh.zzm(2, this.zzcrk);
        }
        return (this.zzcrl == null || this.zzcrl.equals("")) ? zzn : zzn + adh.zzm(3, this.zzcrl);
    }
}
