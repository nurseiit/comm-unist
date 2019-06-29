package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbm extends adj<zzbm> {
    private static volatile zzbm[] zzkM;
    public int key;
    public int value;

    public zzbm() {
        this.key = 0;
        this.value = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbm[] zzr() {
        if (zzkM == null) {
            synchronized (adn.zzcsw) {
                if (zzkM == null) {
                    zzkM = new zzbm[0];
                }
            }
        }
        return zzkM;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbm)) {
            return false;
        }
        zzbm zzbm = (zzbm) obj;
        return (this.key == zzbm.key && this.value == zzbm.value) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbm.zzcso == null || zzbm.zzcso.isEmpty() : this.zzcso.equals(zzbm.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.key) * 31) + this.value) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        adh.zzr(1, this.key);
        adh.zzr(2, this.value);
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        return (super.zzn() + adh.zzs(1, this.key)) + adh.zzs(2, this.value);
    }
}
