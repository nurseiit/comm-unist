package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzais;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzrd;
import java.util.Map;

final class zzr implements zzrd {
    private /* synthetic */ zza zzLi;
    private /* synthetic */ zzm zzLj;
    private /* synthetic */ zzais zzLm;

    zzr(zzm zzm, zza zza, zzais zzais) {
        this.zzLj = zzm;
        this.zzLi = zza;
        this.zzLm = zzais;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        synchronized (this.zzLj.zzLh.mLock) {
            zzajc.zzaS("JS Engine is requesting an update");
            if (this.zzLj.zzLh.zzLe == 0) {
                zzajc.zzaS("Starting reload.");
                this.zzLj.zzLh.zzLe = 2;
                this.zzLj.zzLh.zza(this.zzLj.zzLf);
            }
            this.zzLi.zzb("/requestReload", (zzrd) this.zzLm.get());
        }
    }
}
