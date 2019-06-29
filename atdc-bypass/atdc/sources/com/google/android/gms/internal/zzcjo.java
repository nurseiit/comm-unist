package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjo extends adj<zzcjo> {
    private static volatile zzcjo[] zzbuR;
    public zzcjr zzbuS;
    public zzcjp zzbuT;
    public Boolean zzbuU;
    public String zzbuV;

    public zzcjo() {
        this.zzbuS = null;
        this.zzbuT = null;
        this.zzbuU = null;
        this.zzbuV = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjo[] zzzw() {
        if (zzbuR == null) {
            synchronized (adn.zzcsw) {
                if (zzbuR == null) {
                    zzbuR = new zzcjo[0];
                }
            }
        }
        return zzbuR;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjo)) {
            return false;
        }
        zzcjo zzcjo = (zzcjo) obj;
        if (this.zzbuS == null) {
            if (zzcjo.zzbuS != null) {
                return false;
            }
        } else if (!this.zzbuS.equals(zzcjo.zzbuS)) {
            return false;
        }
        if (this.zzbuT == null) {
            if (zzcjo.zzbuT != null) {
                return false;
            }
        } else if (!this.zzbuT.equals(zzcjo.zzbuT)) {
            return false;
        }
        if (this.zzbuU == null) {
            if (zzcjo.zzbuU != null) {
                return false;
            }
        } else if (!this.zzbuU.equals(zzcjo.zzbuU)) {
            return false;
        }
        if (this.zzbuV == null) {
            if (zzcjo.zzbuV != null) {
                return false;
            }
        } else if (!this.zzbuV.equals(zzcjo.zzbuV)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjo.zzcso == null || zzcjo.zzcso.isEmpty() : this.zzcso.equals(zzcjo.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbuS == null ? 0 : this.zzbuS.hashCode())) * 31) + (this.zzbuT == null ? 0 : this.zzbuT.hashCode())) * 31) + (this.zzbuU == null ? 0 : this.zzbuU.hashCode())) * 31) + (this.zzbuV == null ? 0 : this.zzbuV.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbuS != null) {
            adh.zza(1, this.zzbuS);
        }
        if (this.zzbuT != null) {
            adh.zza(2, this.zzbuT);
        }
        if (this.zzbuU != null) {
            adh.zzk(3, this.zzbuU.booleanValue());
        }
        if (this.zzbuV != null) {
            adh.zzl(4, this.zzbuV);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbuS != null) {
            zzn += adh.zzb(1, this.zzbuS);
        }
        if (this.zzbuT != null) {
            zzn += adh.zzb(2, this.zzbuT);
        }
        if (this.zzbuU != null) {
            this.zzbuU.booleanValue();
            zzn += adh.zzct(3) + 1;
        }
        return this.zzbuV != null ? zzn + adh.zzm(4, this.zzbuV) : zzn;
    }
}
