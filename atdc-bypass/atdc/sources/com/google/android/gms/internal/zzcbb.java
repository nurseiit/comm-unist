package com.google.android.gms.internal;

import java.io.IOException;

public final class zzcbb extends adj<zzcbb> {
    private static volatile zzcbb[] zzbgt;
    public String name;
    public zzcbd zzbgu;

    public zzcbb() {
        this.name = "";
        this.zzbgu = null;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public static zzcbb[] zzvI() {
        if (zzbgt == null) {
            synchronized (adn.zzcsw) {
                if (zzbgt == null) {
                    zzbgt = new zzcbb[0];
                }
            }
        }
        return zzbgt;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcbb)) {
            return false;
        }
        zzcbb zzcbb = (zzcbb) obj;
        if (this.name == null) {
            if (zzcbb.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzcbb.name)) {
            return false;
        }
        if (this.zzbgu == null) {
            if (zzcbb.zzbgu != null) {
                return false;
            }
        } else if (!this.zzbgu.equals(zzcbb.zzbgu)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? zzcbb.zzcso == null || zzcbb.zzcso.isEmpty() : this.zzcso.equals(zzcbb.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzbgu == null ? 0 : this.zzbgu.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (!(this.name == null || this.name.equals(""))) {
            adh.zzl(1, this.name);
        }
        if (this.zzbgu != null) {
            adh.zza(2, this.zzbgu);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (!(this.name == null || this.name.equals(""))) {
            zzn += adh.zzm(1, this.name);
        }
        return this.zzbgu != null ? zzn + adh.zzb(2, this.zzbgu) : zzn;
    }
}
