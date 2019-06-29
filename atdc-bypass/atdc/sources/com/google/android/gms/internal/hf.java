package com.google.android.gms.internal;

import java.io.IOException;

public final class hf extends adj<hf> {
    private static volatile hf[] zzbTI;
    public String name;
    public hg zzbTJ;

    public hf() {
        this.name = "";
        this.zzbTJ = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static hf[] zzEa() {
        if (zzbTI == null) {
            synchronized (adn.zzcsw) {
                if (zzbTI == null) {
                    zzbTI = new hf[0];
                }
            }
        }
        return zzbTI;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hf)) {
            return false;
        }
        hf hfVar = (hf) obj;
        if (this.name == null) {
            if (hfVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(hfVar.name)) {
            return false;
        }
        if (this.zzbTJ == null) {
            if (hfVar.zzbTJ != null) {
                return false;
            }
        } else if (!this.zzbTJ.equals(hfVar.zzbTJ)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? hfVar.zzcso == null || hfVar.zzcso.isEmpty() : this.zzcso.equals(hfVar.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzbTJ == null ? 0 : this.zzbTJ.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzl(1, this.name);
        if (this.zzbTJ != null) {
            adh.zza(2, this.zzbTJ);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn() + adh.zzm(1, this.name);
        return this.zzbTJ != null ? zzn + adh.zzb(2, this.zzbTJ) : zzn;
    }
}
