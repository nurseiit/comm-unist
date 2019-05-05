package com.google.android.gms.internal;

import java.io.IOException;

public final class aco extends adj<aco> {
    private String moduleId;
    public int version;
    private long zzcrg;
    private long zzcrh;
    private String zzcri;

    public aco() {
        this.zzcrg = 0;
        this.zzcrh = 0;
        this.version = 0;
        this.zzcri = "";
        this.moduleId = "";
        this.zzcso = null;
        this.zzcsx = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aco)) {
            return false;
        }
        aco aco = (aco) obj;
        if (this.zzcrg != aco.zzcrg || this.zzcrh != aco.zzcrh || this.version != aco.version) {
            return false;
        }
        if (this.zzcri == null) {
            if (aco.zzcri != null) {
                return false;
            }
        } else if (!this.zzcri.equals(aco.zzcri)) {
            return false;
        }
        if (this.moduleId == null) {
            if (aco.moduleId != null) {
                return false;
            }
        } else if (!this.moduleId.equals(aco.moduleId)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? aco.zzcso == null || aco.zzcso.isEmpty() : this.zzcso.equals(aco.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzcrg ^ (this.zzcrg >>> 32)))) * 31) + ((int) (this.zzcrh ^ (this.zzcrh >>> 32)))) * 31) + this.version) * 31) + (this.zzcri == null ? 0 : this.zzcri.hashCode())) * 31) + (this.moduleId == null ? 0 : this.moduleId.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcrg != 0) {
            adh.zzb(1, this.zzcrg);
        }
        if (this.zzcrh != 0) {
            adh.zzb(2, this.zzcrh);
        }
        if (this.version != 0) {
            adh.zzr(3, this.version);
        }
        if (!(this.zzcri == null || this.zzcri.equals(""))) {
            adh.zzl(4, this.zzcri);
        }
        if (!(this.moduleId == null || this.moduleId.equals(""))) {
            adh.zzl(5, this.moduleId);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcrg != 0) {
            zzn += adh.zze(1, this.zzcrg);
        }
        if (this.zzcrh != 0) {
            zzn += adh.zze(2, this.zzcrh);
        }
        if (this.version != 0) {
            zzn += adh.zzs(3, this.version);
        }
        if (!(this.zzcri == null || this.zzcri.equals(""))) {
            zzn += adh.zzm(4, this.zzcri);
        }
        return (this.moduleId == null || this.moduleId.equals("")) ? zzn : zzn + adh.zzm(5, this.moduleId);
    }
}
