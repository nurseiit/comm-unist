package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcba extends adj<zzcba> {
    private static volatile zzcba[] zzbgq;
    public int viewId;
    public String zzbgr;
    public String zzbgs;

    public zzcba() {
        this.zzbgr = "";
        this.zzbgs = "";
        this.viewId = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcba[] zzvH() {
        if (zzbgq == null) {
            synchronized (adn.zzcsw) {
                if (zzbgq == null) {
                    zzbgq = new zzcba[0];
                }
            }
        }
        return zzbgq;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcba)) {
            return false;
        }
        zzcba zzcba = (zzcba) obj;
        if (this.zzbgr == null) {
            if (zzcba.zzbgr != null) {
                return false;
            }
        } else if (!this.zzbgr.equals(zzcba.zzbgr)) {
            return false;
        }
        if (this.zzbgs == null) {
            if (zzcba.zzbgs != null) {
                return false;
            }
        } else if (!this.zzbgs.equals(zzcba.zzbgs)) {
            return false;
        }
        return this.viewId != zzcba.viewId ? false : (this.zzcso == null || this.zzcso.isEmpty()) ? zzcba.zzcso == null || zzcba.zzcso.isEmpty() : this.zzcso.equals(zzcba.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + (this.zzbgr == null ? 0 : this.zzbgr.hashCode())) * 31) + (this.zzbgs == null ? 0 : this.zzbgs.hashCode())) * 31) + this.viewId) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.zzbgr == null || this.zzbgr.equals(""))) {
            adh.zzl(1, this.zzbgr);
        }
        if (!(this.zzbgs == null || this.zzbgs.equals(""))) {
            adh.zzl(2, this.zzbgs);
        }
        if (this.viewId != 0) {
            adh.zzr(3, this.viewId);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.zzbgr == null || this.zzbgr.equals(""))) {
            zzn += adh.zzm(1, this.zzbgr);
        }
        if (!(this.zzbgs == null || this.zzbgs.equals(""))) {
            zzn += adh.zzm(2, this.zzbgs);
        }
        return this.viewId != 0 ? zzn + adh.zzs(3, this.viewId) : zzn;
    }
}
