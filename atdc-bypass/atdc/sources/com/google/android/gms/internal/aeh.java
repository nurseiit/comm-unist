package com.google.android.gms.internal;

import java.io.IOException;

public final class aeh extends adj<aeh> implements Cloneable {
    private String version;
    private int zzbpb;
    private String zzctL;

    public aeh() {
        this.zzbpb = 0;
        this.zzctL = "";
        this.version = "";
        this.zzcso = null;
        this.zzcsx = -1;
    }

    private aeh zzMb() {
        try {
            return (aeh) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzMb();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aeh)) {
            return false;
        }
        aeh aeh = (aeh) obj;
        if (this.zzbpb != aeh.zzbpb) {
            return false;
        }
        if (this.zzctL == null) {
            if (aeh.zzctL != null) {
                return false;
            }
        } else if (!this.zzctL.equals(aeh.zzctL)) {
            return false;
        }
        if (this.version == null) {
            if (aeh.version != null) {
                return false;
            }
        } else if (!this.version.equals(aeh.version)) {
            return false;
        }
        return (this.zzcso == null || this.zzcso.isEmpty()) ? aeh.zzcso == null || aeh.zzcso.isEmpty() : this.zzcso.equals(aeh.zzcso);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + this.zzbpb) * 31) + (this.zzctL == null ? 0 : this.zzctL.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode())) * 31;
        if (!(this.zzcso == null || this.zzcso.isEmpty())) {
            i = this.zzcso.hashCode();
        }
        return hashCode + i;
    }

    public final /* synthetic */ adj zzLN() throws CloneNotSupportedException {
        return (aeh) clone();
    }

    public final /* synthetic */ adp zzLO() throws CloneNotSupportedException {
        return (aeh) clone();
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzbpb != 0) {
            adh.zzr(1, this.zzbpb);
        }
        if (!(this.zzctL == null || this.zzctL.equals(""))) {
            adh.zzl(2, this.zzctL);
        }
        if (!(this.version == null || this.version.equals(""))) {
            adh.zzl(3, this.version);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzbpb != 0) {
            zzn += adh.zzs(1, this.zzbpb);
        }
        if (!(this.zzctL == null || this.zzctL.equals(""))) {
            zzn += adh.zzm(2, this.zzctL);
        }
        return (this.version == null || this.version.equals("")) ? zzn : zzn + adh.zzm(3, this.version);
    }
}
