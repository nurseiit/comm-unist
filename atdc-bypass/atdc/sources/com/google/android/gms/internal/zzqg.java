package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener;

@zzzn
public final class zzqg extends zzpx {
    private final OnCustomTemplateAdLoadedListener zzIO;

    public zzqg(OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzIO = onCustomTemplateAdLoadedListener;
    }

    public final void zza(zzpj zzpj) {
        this.zzIO.onCustomTemplateAdLoaded(new zzpm(zzpj));
    }
}
