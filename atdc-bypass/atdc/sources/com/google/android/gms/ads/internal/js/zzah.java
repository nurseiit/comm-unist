package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzajq;
import com.google.android.gms.internal.zzajs;
import com.google.android.gms.internal.zzajt;

public final class zzah extends zzajt<zzai> {
    private zzy zzLA;

    public zzah(zzy zzy) {
        this.zzLA = zzy;
    }

    public final void finalize() {
        this.zzLA.release();
        this.zzLA = null;
    }

    public final int getStatus() {
        return this.zzLA.getStatus();
    }

    public final void reject() {
        this.zzLA.reject();
    }

    public final void zza(zzajs<zzai> zzajs, zzajq zzajq) {
        this.zzLA.zza(zzajs, zzajq);
    }

    public final /* synthetic */ void zzf(Object obj) {
        this.zzLA.zzf((zzai) obj);
    }
}
