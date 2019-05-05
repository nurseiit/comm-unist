package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcjp extends adj<zzcjp> {
    public Integer zzbuW;
    public Boolean zzbuX;
    public String zzbuY;
    public String zzbuZ;
    public String zzbva;

    public zzcjp() {
        this.zzbuW = null;
        this.zzbuX = null;
        this.zzbuY = null;
        this.zzbuZ = null;
        this.zzbva = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcjp)) {
            return false;
        }
        zzcjp zzcjp = (zzcjp) obj;
        if (this.zzbuW == null) {
            if (zzcjp.zzbuW != null) {
                return false;
            }
        } else if (!this.zzbuW.equals(zzcjp.zzbuW)) {
            return false;
        }
        if (this.zzbuX == null) {
            if (zzcjp.zzbuX != null) {
                return false;
            }
        } else if (!this.zzbuX.equals(zzcjp.zzbuX)) {
            return false;
        }
        if (this.zzbuY == null) {
            if (zzcjp.zzbuY != null) {
                return false;
            }
        } else if (!this.zzbuY.equals(zzcjp.zzbuY)) {
            return false;
        }
        if (this.zzbuZ == null) {
            if (zzcjp.zzbuZ != null) {
                return false;
            }
        } else if (!this.zzbuZ.equals(zzcjp.zzbuZ)) {
            return false;
        }
        if (this.zzbva == null) {
            if (zzcjp.zzbva != null) {
                return false;
            }
        } else if (!this.zzbva.equals(zzcjp.zzbva)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcjp.zzcso == null || zzcjp.zzcso.isEmpty() : this.zzcso.equals(zzcjp.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbuW == null ? 0 : this.zzbuW.intValue())) * 31) + (this.zzbuX == null ? 0 : this.zzbuX.hashCode())) * 31) + (this.zzbuY == null ? 0 : this.zzbuY.hashCode())) * 31) + (this.zzbuZ == null ? 0 : this.zzbuZ.hashCode())) * 31) + (this.zzbva == null ? 0 : this.zzbva.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbuW != null) {
            adh.zzr(1, this.zzbuW.intValue());
        }
        if (this.zzbuX != null) {
            adh.zzk(2, this.zzbuX.booleanValue());
        }
        if (this.zzbuY != null) {
            adh.zzl(3, this.zzbuY);
        }
        if (this.zzbuZ != null) {
            adh.zzl(4, this.zzbuZ);
        }
        if (this.zzbva != null) {
            adh.zzl(5, this.zzbva);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbuW != null) {
            zzn += adh.zzs(1, this.zzbuW.intValue());
        }
        if (this.zzbuX != null) {
            this.zzbuX.booleanValue();
            zzn += adh.zzct(2) + 1;
        }
        if (this.zzbuY != null) {
            zzn += adh.zzm(3, this.zzbuY);
        }
        if (this.zzbuZ != null) {
            zzn += adh.zzm(4, this.zzbuZ);
        }
        return this.zzbva != null ? zzn + adh.zzm(5, this.zzbva) : zzn;
    }
}
