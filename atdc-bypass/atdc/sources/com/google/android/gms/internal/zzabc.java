package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzai;

final class zzabc implements zzajs<zzai> {
    private /* synthetic */ zzabb zzUf;

    zzabc(zzabb zzabb) {
        this.zzUf = zzabb;
    }

    public final /* synthetic */ void zzc(Object obj) {
        try {
            ((zzai) obj).zza("AFMA_getAdapterLessMediationAd", this.zzUf.zzUd);
        } catch (Exception e) {
            zzajc.zzb("Error requesting an ad url", e);
            zzaaz.zzTZ.zzT(this.zzUf.zzUe);
        }
    }
}
