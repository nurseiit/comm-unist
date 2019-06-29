package com.google.android.gms.internal;

import java.io.IOException;

public final class zzbj extends adj<zzbj> {
    private static volatile zzbj[] zzkz;
    private int name;
    public int[] zzkA;
    private int zzkB;
    private boolean zzkC;
    private boolean zzkD;

    public zzbj() {
        this.zzkA = ads.zzcsC;
        this.zzkB = 0;
        this.name = 0;
        this.zzkC = false;
        this.zzkD = false;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzbj[] zzp() {
        if (zzkz == null) {
            synchronized (adn.zzcsw) {
                if (zzkz == null) {
                    zzkz = new zzbj[0];
                }
            }
        }
        return zzkz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbj)) {
            return false;
        }
        zzbj zzbj = (zzbj) obj;
        return (adn.equals(this.zzkA, zzbj.zzkA) && this.zzkB == zzbj.zzkB && this.name == zzbj.name && this.zzkC == zzbj.zzkC && this.zzkD == zzbj.zzkD) ? (this.zzcso == null || this.zzcso.isEmpty()) ? zzbj.zzcso == null || zzbj.zzcso.isEmpty() : this.zzcso.equals(zzbj.zzcso) : false;
    }

    public final int hashCode() {
        int i = 1237;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + adn.hashCode(this.zzkA)) * 31) + this.zzkB) * 31) + this.name) * 31) + (this.zzkC ? 1231 : 1237)) * 31;
        if (this.zzkD) {
            i = 1231;
        }
        hashCode = (hashCode + i) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzkD) {
            adh.zzk(1, this.zzkD);
        }
        adh.zzr(2, this.zzkB);
        if (this.zzkA != null && this.zzkA.length > 0) {
            for (int zzr : this.zzkA) {
                adh.zzr(3, zzr);
            }
        }
        if (this.name != 0) {
            adh.zzr(4, this.name);
        }
        if (this.zzkC) {
            adh.zzk(6, this.zzkC);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzkD) {
            zzn += adh.zzct(1) + 1;
        }
        zzn += adh.zzs(2, this.zzkB);
        if (this.zzkA != null && this.zzkA.length > 0) {
            int i = 0;
            for (int zzcr : this.zzkA) {
                i += adh.zzcr(zzcr);
            }
            zzn = (zzn + i) + (this.zzkA.length * 1);
        }
        if (this.name != 0) {
            zzn += adh.zzs(4, this.name);
        }
        return this.zzkC ? zzn + (adh.zzct(6) + 1) : zzn;
    }
}
