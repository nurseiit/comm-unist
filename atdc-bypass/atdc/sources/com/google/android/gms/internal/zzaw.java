package com.google.android.gms.internal;

import java.io.IOException;

public final class zzaw extends adj<zzaw> {
    public String zzaT;
    private String zzaU;
    private String zzaV;
    private String zzaW;
    private String zzaX;

    public zzaw() {
        this.zzaT = null;
        this.zzaU = null;
        this.zzaV = null;
        this.zzaW = null;
        this.zzaX = null;
        this.zzcsx = -1;
    }

    public final void zza(adh adh) throws IOException {
        if (this.zzaT != null) {
            adh.zzl(1, this.zzaT);
        }
        if (this.zzaU != null) {
            adh.zzl(2, this.zzaU);
        }
        if (this.zzaV != null) {
            adh.zzl(3, this.zzaV);
        }
        if (this.zzaW != null) {
            adh.zzl(4, this.zzaW);
        }
        if (this.zzaX != null) {
            adh.zzl(5, this.zzaX);
        }
        super.zza(adh);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzn() {
        int zzn = super.zzn();
        if (this.zzaT != null) {
            zzn += adh.zzm(1, this.zzaT);
        }
        if (this.zzaU != null) {
            zzn += adh.zzm(2, this.zzaU);
        }
        if (this.zzaV != null) {
            zzn += adh.zzm(3, this.zzaV);
        }
        if (this.zzaW != null) {
            zzn += adh.zzm(4, this.zzaW);
        }
        return this.zzaX != null ? zzn + adh.zzm(5, this.zzaX) : zzn;
    }
}
