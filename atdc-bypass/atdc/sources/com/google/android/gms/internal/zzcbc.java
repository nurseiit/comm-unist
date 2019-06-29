package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcbc extends adj<zzcbc> {
    public String type;
    public zzcbb[] zzbgv;

    public zzcbc() {
        this.type = "";
        this.zzbgv = zzcbb.zzvI();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcbc)) {
            return false;
        }
        zzcbc zzcbc = (zzcbc) obj;
        if (this.type == null) {
            if (zzcbc.type != null) {
                return false;
            }
        } else if (!this.type.equals(zzcbc.type)) {
            return false;
        }
        return !adn.equals(this.zzbgv, zzcbc.zzbgv) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? zzcbc.zzcso == null || zzcbc.zzcso.isEmpty() : this.zzcso.equals(zzcbc.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.type == null ? 0 : this.type.hashCode())) * 31) + adn.hashCode(this.zzbgv)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.type == null || this.type.equals(""))) {
            adh.zzl(1, this.type);
        }
        if (this.zzbgv != null && this.zzbgv.length > 0) {
            for (adp adp : this.zzbgv) {
                if (adp != null) {
                    adh.zza(2, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.type == null || this.type.equals(""))) {
            zzn += adh.zzm(1, this.type);
        }
        if (this.zzbgv != null && this.zzbgv.length > 0) {
            for (adp adp : this.zzbgv) {
                if (adp != null) {
                    zzn += adh.zzb(2, adp);
                }
            }
        }
        return zzn;
    }
}
