package com.google.android.gms.internal;

import java.io.IOException;

public final class zzat extends adj<zzat> {
    private String stackTrace;
    public String zzaH;
    public Long zzaI;
    private String zzaJ;
    private String zzaK;
    private Long zzaL;
    private Long zzaM;
    private String zzaN;
    private Long zzaO;
    private String zzaP;

    public zzat() {
        this.zzaH = null;
        this.zzaI = null;
        this.stackTrace = null;
        this.zzaJ = null;
        this.zzaK = null;
        this.zzaL = null;
        this.zzaM = null;
        this.zzaN = null;
        this.zzaO = null;
        this.zzaP = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzaH != null) {
            adh.zzl(1, this.zzaH);
        }
        if (this.zzaI != null) {
            adh.zzb(2, this.zzaI.longValue());
        }
        if (this.stackTrace != null) {
            adh.zzl(3, this.stackTrace);
        }
        if (this.zzaJ != null) {
            adh.zzl(4, this.zzaJ);
        }
        if (this.zzaK != null) {
            adh.zzl(5, this.zzaK);
        }
        if (this.zzaL != null) {
            adh.zzb(6, this.zzaL.longValue());
        }
        if (this.zzaM != null) {
            adh.zzb(7, this.zzaM.longValue());
        }
        if (this.zzaN != null) {
            adh.zzl(8, this.zzaN);
        }
        if (this.zzaO != null) {
            adh.zzb(9, this.zzaO.longValue());
        }
        if (this.zzaP != null) {
            adh.zzl(10, this.zzaP);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzaH != null) {
            zzn += adh.zzm(1, this.zzaH);
        }
        if (this.zzaI != null) {
            zzn += adh.zze(2, this.zzaI.longValue());
        }
        if (this.stackTrace != null) {
            zzn += adh.zzm(3, this.stackTrace);
        }
        if (this.zzaJ != null) {
            zzn += adh.zzm(4, this.zzaJ);
        }
        if (this.zzaK != null) {
            zzn += adh.zzm(5, this.zzaK);
        }
        if (this.zzaL != null) {
            zzn += adh.zze(6, this.zzaL.longValue());
        }
        if (this.zzaM != null) {
            zzn += adh.zze(7, this.zzaM.longValue());
        }
        if (this.zzaN != null) {
            zzn += adh.zzm(8, this.zzaN);
        }
        if (this.zzaO != null) {
            zzn += adh.zze(9, this.zzaO.longValue());
        }
        return this.zzaP != null ? zzn + adh.zzm(10, this.zzaP) : zzn;
    }
}
