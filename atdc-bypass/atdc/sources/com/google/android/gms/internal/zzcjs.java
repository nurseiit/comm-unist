package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjs extends adj<zzcjs> {
    private static volatile zzcjs[] zzbvi;
    public String name;
    public Boolean zzbvj;
    public Boolean zzbvk;

    public zzcjs() {
        this.name = null;
        this.zzbvj = null;
        this.zzbvk = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcjs[] zzzy() {
        if (zzbvi == null) {
            synchronized (adn.zzcsw) {
                if (zzbvi == null) {
                    zzbvi = new zzcjs[0];
                }
            }
        }
        return zzbvi;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjs)) {
            return false;
        }
        zzcjs zzcjs = (zzcjs) obj;
        if (this.name == null) {
            if (zzcjs.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzcjs.name)) {
            return false;
        }
        if (this.zzbvj == null) {
            if (zzcjs.zzbvj != null) {
                return false;
            }
        } else if (!this.zzbvj.equals(zzcjs.zzbvj)) {
            return false;
        }
        if (this.zzbvk == null) {
            if (zzcjs.zzbvk != null) {
                return false;
            }
        } else if (!this.zzbvk.equals(zzcjs.zzbvk)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjs.zzcso == null || zzcjs.zzcso.isEmpty() : this.zzcso.equals(zzcjs.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzbvj == null ? 0 : this.zzbvj.hashCode())) * 31) + (this.zzbvk == null ? 0 : this.zzbvk.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.name != null) {
            adh.zzl(1, this.name);
        }
        if (this.zzbvj != null) {
            adh.zzk(2, this.zzbvj.booleanValue());
        }
        if (this.zzbvk != null) {
            adh.zzk(3, this.zzbvk.booleanValue());
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.name != null) {
            zzn += adh.zzm(1, this.name);
        }
        if (this.zzbvj != null) {
            this.zzbvj.booleanValue();
            zzn += adh.zzct(2) + 1;
        }
        if (this.zzbvk == null) {
            return zzn;
        }
        this.zzbvk.booleanValue();
        return zzn + (adh.zzct(3) + 1);
    }
}
