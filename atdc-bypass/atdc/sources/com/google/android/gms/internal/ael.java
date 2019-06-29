package com.google.android.gms.internal;

import java.io.IOException;

public final class ael extends adj<ael> implements Cloneable {
    private int zzcuk;
    private int zzcul;

    public ael() {
        this.zzcuk = -1;
        this.zzcul = 0;
        this.zzcso = null;
        this.zzcsx = -1;
    }

    private ael zzMg() {
        try {
            return (ael) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzMg();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ael)) {
            return false;
        }
        ael ael = (ael) obj;
        return (this.zzcuk == ael.zzcuk && this.zzcul == ael.zzcul) ? (this.zzcso == null || this.zzcso.isEmpty()) ? ael.zzcso == null || ael.zzcso.isEmpty() : this.zzcso.equals(ael.zzcso) : false;
    }

    public final int hashCode() {
        int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.zzcuk) * 31) + this.zzcul) * 31;
        int hashCode2 = (this.zzcso == null || this.zzcso.isEmpty()) ? 0 : this.zzcso.hashCode();
        return hashCode + hashCode2;
    }

    public final /* synthetic */ adj zzLN() throws CloneNotSupportedException {
        return (ael) clone();
    }

    public final /* synthetic */ adp zzLO() throws CloneNotSupportedException {
        return (ael) clone();
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzcuk != -1) {
            adh.zzr(1, this.zzcuk);
        }
        if (this.zzcul != 0) {
            adh.zzr(2, this.zzcul);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzcuk != -1) {
            zzn += adh.zzs(1, this.zzcuk);
        }
        return this.zzcul != 0 ? zzn + adh.zzs(2, this.zzcul) : zzn;
    }
}
