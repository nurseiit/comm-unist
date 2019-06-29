package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjx extends adj<zzcjx> {
    private static volatile zzcjx[] zzbvz;
    public String name;
    public String zzaIF;
    private Float zzbuA;
    public Double zzbuB;
    public Long zzbvA;

    public zzcjx() {
        this.name = null;
        this.zzaIF = null;
        this.zzbvA = null;
        this.zzbuA = null;
        this.zzbuB = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjx[] zzzC() {
        if (zzbvz == null) {
            synchronized (adn.zzcsw) {
                if (zzbvz == null) {
                    zzbvz = new zzcjx[0];
                }
            }
        }
        return zzbvz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjx)) {
            return false;
        }
        zzcjx zzcjx = (zzcjx) obj;
        if (this.name == null) {
            if (zzcjx.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzcjx.name)) {
            return false;
        }
        if (this.zzaIF == null) {
            if (zzcjx.zzaIF != null) {
                return false;
            }
        } else if (!this.zzaIF.equals(zzcjx.zzaIF)) {
            return false;
        }
        if (this.zzbvA == null) {
            if (zzcjx.zzbvA != null) {
                return false;
            }
        } else if (!this.zzbvA.equals(zzcjx.zzbvA)) {
            return false;
        }
        if (this.zzbuA == null) {
            if (zzcjx.zzbuA != null) {
                return false;
            }
        } else if (!this.zzbuA.equals(zzcjx.zzbuA)) {
            return false;
        }
        if (this.zzbuB == null) {
            if (zzcjx.zzbuB != null) {
                return false;
            }
        } else if (!this.zzbuB.equals(zzcjx.zzbuB)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjx.zzcso == null || zzcjx.zzcso.isEmpty() : this.zzcso.equals(zzcjx.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzaIF == null ? 0 : this.zzaIF.hashCode())) * 31) + (this.zzbvA == null ? 0 : this.zzbvA.hashCode())) * 31) + (this.zzbuA == null ? 0 : this.zzbuA.hashCode())) * 31) + (this.zzbuB == null ? 0 : this.zzbuB.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.name != null) {
            adh.zzl(1, this.name);
        }
        if (this.zzaIF != null) {
            adh.zzl(2, this.zzaIF);
        }
        if (this.zzbvA != null) {
            adh.zzb(3, this.zzbvA.longValue());
        }
        if (this.zzbuA != null) {
            adh.zzc(4, this.zzbuA.floatValue());
        }
        if (this.zzbuB != null) {
            adh.zza(5, this.zzbuB.doubleValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.name != null) {
            zzn += adh.zzm(1, this.name);
        }
        if (this.zzaIF != null) {
            zzn += adh.zzm(2, this.zzaIF);
        }
        if (this.zzbvA != null) {
            zzn += adh.zze(3, this.zzbvA.longValue());
        }
        if (this.zzbuA != null) {
            this.zzbuA.floatValue();
            zzn += adh.zzct(4) + 4;
        }
        if (this.zzbuB == null) {
            return zzn;
        }
        this.zzbuB.doubleValue();
        return zzn + (adh.zzct(5) + 8);
    }
}
