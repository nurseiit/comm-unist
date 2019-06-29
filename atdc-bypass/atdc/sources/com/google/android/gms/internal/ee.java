package com.google.android.gms.internal;

import java.io.IOException;

public final class ee extends adj<ee> {
    public long zzbLG;
    public zzbq zzbLH;
    public zzbn zzlB;

    public ee() {
        this.zzbLG = 0;
        this.zzlB = null;
        this.zzbLH = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ee)) {
            return false;
        }
        ee eeVar = (ee) obj;
        if (this.zzbLG != eeVar.zzbLG) {
            return false;
        }
        if (this.zzlB == null) {
            if (eeVar.zzlB != null) {
                return false;
            }
        } else if (!this.zzlB.equals(eeVar.zzlB)) {
            return false;
        }
        if (this.zzbLH == null) {
            if (eeVar.zzbLH != null) {
                return false;
            }
        } else if (!this.zzbLH.equals(eeVar.zzbLH)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? eeVar.zzcso == null || eeVar.zzcso.isEmpty() : this.zzcso.equals(eeVar.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzbLG ^ (this.zzbLG >>> 32)))) * 31) + (this.zzlB == null ? 0 : this.zzlB.hashCode())) * 31) + (this.zzbLH == null ? 0 : this.zzbLH.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzb(1, this.zzbLG);
        if (this.zzlB != null) {
            adh.zza(2, this.zzlB);
        }
        if (this.zzbLH != null) {
            adh.zza(3, this.zzbLH);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn() + adh.zze(1, this.zzbLG);
        if (this.zzlB != null) {
            zzn += adh.zzb(2, this.zzlB);
        }
        return this.zzbLH != null ? zzn + adh.zzb(3, this.zzbLH) : zzn;
    }
}
