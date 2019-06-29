package com.google.android.gms.internal;

import java.io.IOException;

public final class aed extends adj<aed> {
    public int score;
    public boolean zzctw;
    public String zzctx;
    private aee[] zzcty;

    public aed() {
        this.zzctw = false;
        this.score = 0;
        this.zzctx = "";
        this.zzcty = aee.zzLY();
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aed)) {
            return false;
        }
        aed aed = (aed) obj;
        if (this.zzctw != aed.zzctw || this.score != aed.score) {
            return false;
        }
        if (this.zzctx == null) {
            if (aed.zzctx != null) {
                return false;
            }
        } else if (!this.zzctx.equals(aed.zzctx)) {
            return false;
        }
        return !adn.equals(this.zzcty, aed.zzcty) ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? aed.zzcso == null || aed.zzcso.isEmpty() : this.zzcso.equals(aed.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzctw ? 1231 : 1237)) * 31) + this.score) * 31) + (this.zzctx == null ? 0 : this.zzctx.hashCode())) * 31) + adn.hashCode(this.zzcty)) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzctw) {
            adh.zzk(1, this.zzctw);
        }
        if (this.score != 0) {
            adh.zzr(2, this.score);
        }
        if (!(this.zzctx == null || this.zzctx.equals(""))) {
            adh.zzl(3, this.zzctx);
        }
        if (this.zzcty != null && this.zzcty.length > 0) {
            for (adp adp : this.zzcty) {
                if (adp != null) {
                    adh.zza(4, adp);
                }
            }
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzctw) {
            zzn += adh.zzct(1) + 1;
        }
        if (this.score != 0) {
            zzn += adh.zzs(2, this.score);
        }
        if (!(this.zzctx == null || this.zzctx.equals(""))) {
            zzn += adh.zzm(3, this.zzctx);
        }
        if (this.zzcty != null && this.zzcty.length > 0) {
            for (adp adp : this.zzcty) {
                if (adp != null) {
                    zzn += adh.zzb(4, adp);
                }
            }
        }
        return zzn;
    }
}
