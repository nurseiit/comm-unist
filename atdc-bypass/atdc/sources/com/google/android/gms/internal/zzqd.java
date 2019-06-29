package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;

@zzzn
public final class zzqd extends zzpo {
    private final OnAppInstallAdLoadedListener zzIL;

    public zzqd(OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzIL = onAppInstallAdLoadedListener;
    }

    public final void zza(zzpb zzpb) {
        this.zzIL.onAppInstallAdLoaded(new zzpe(zzpb));
    }
}
