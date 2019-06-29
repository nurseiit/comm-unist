package com.google.android.gms.internal;

import java.io.IOException;

public final class aef extends adj<aef> {
    private static volatile aef[] zzctE;
    private String type;
    private aed zzctF;
    private aee[] zzcty;
    private String zzkv;

    public aef() {
        this.type = "";
        this.zzkv = "";
        this.zzcty = aee.zzLY();
        this.zzctF = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static aef[] zzLZ() {
        if (zzctE == null) {
            synchronized (adn.zzcsw) {
                if (zzctE == null) {
                    zzctE = new aef[0];
                }
            }
        }
        return zzctE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aef)) {
            return false;
        }
        aef aef = (aef) obj;
        if (this.type == null) {
            if (aef.type != null) {
                return false;
            }
        } else if (!this.type.equals(aef.type)) {
            return false;
        }
        if (this.zzkv == null) {
            if (aef.zzkv != null) {
                return false;
            }
        } else if (!this.zzkv.equals(aef.zzkv)) {
            return false;
        }
        if (!adn.equals(this.zzcty, aef.zzcty)) {
            return false;
        }
        if (this.zzctF == null) {
            if (aef.zzctF != null) {
                return false;
            }
        } else if (!this.zzctF.equals(aef.zzctF)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? aef.zzcso == null || aef.zzcso.isEmpty() : this.zzcso.equals(aef.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.type == null ? 0 : this.type.hashCode())) * 31) + (this.zzkv == null ? 0 : this.zzkv.hashCode())) * 31) + adn.hashCode(this.zzcty)) * 31) + (this.zzctF == null ? 0 : this.zzctF.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.type == null || this.type.equals(""))) {
            adh.zzl(1, this.type);
        }
        if (!(this.zzkv == null || this.zzkv.equals(""))) {
            adh.zzl(2, this.zzkv);
        }
        if (this.zzcty != null && this.zzcty.length > 0) {
            for (adp adp : this.zzcty) {
                if (adp != null) {
                    adh.zza(3, adp);
                }
            }
        }
        if (this.zzctF != null) {
            adh.zza(4, this.zzctF);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.type == null || this.type.equals(""))) {
            zzn += adh.zzm(1, this.type);
        }
        if (!(this.zzkv == null || this.zzkv.equals(""))) {
            zzn += adh.zzm(2, this.zzkv);
        }
        if (this.zzcty != null && this.zzcty.length > 0) {
            for (adp adp : this.zzcty) {
                if (adp != null) {
                    zzn += adh.zzb(3, adp);
                }
            }
        }
        return this.zzctF != null ? zzn + adh.zzb(4, this.zzctF) : zzn;
    }
}
