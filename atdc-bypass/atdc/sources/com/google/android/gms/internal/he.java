package com.google.android.gms.internal;

import java.io.IOException;

public final class he extends adj<he> {
    public hf[] zzbTH;

    public he() {
        this.zzbTH = hf.zzEa();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static he zzy(byte[] bArr) throws ado {
        return (he) adp.zza(new he(), bArr);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof he)) {
            return false;
        }
        he heVar = (he) obj;
        return !adn.equals(this.zzbTH, heVar.zzbTH) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? heVar.zzcso == null || heVar.zzcso.isEmpty() : this.zzcso.equals(heVar.zzcso);
    }

    public final int hashCode() {
        int hashCode = (((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzbTH)) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbTH != null && this.zzbTH.length > 0) {
            for (adp adp : this.zzbTH) {
                if (adp != null) {
                    adh.zza(1, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbTH != null && this.zzbTH.length > 0) {
            for (adp adp : this.zzbTH) {
                if (adp != null) {
                    zzn += adh.zzb(1, adp);
                }
            }
        }
        return zzn;
    }
}
