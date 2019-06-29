package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;

final class zzabo implements zzajs<zzai> {
    private /* synthetic */ zzmz zzUD;
    private /* synthetic */ zzabn zzUE;

    zzabo(zzabn zzabn, zzmz zzmz) {
        this.zzUE = zzabn;
        this.zzUD = zzmz;
    }

    public final /* synthetic */ void zzc(Object obj) {
        zzai zzai = (zzai) obj;
        this.zzUE.zztd.zza(this.zzUD, "jsf");
        this.zzUE.zztd.zzdT();
        zzai.zza("/invalidRequest", this.zzUE.zzUA.zzUO);
        zzai.zza("/loadAdURL", this.zzUE.zzUA.zzUP);
        zzai.zza("/loadAd", this.zzUE.zzUA.zzUQ);
        try {
            zzai.zzi("AFMA_getAd", this.zzUE.zzUC);
        } catch (Exception e) {
            zzajc.zzb("Error requesting an ad url", e);
        }
    }
}
