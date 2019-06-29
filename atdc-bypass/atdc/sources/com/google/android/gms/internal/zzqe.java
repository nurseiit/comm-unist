package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;

@zzzn
public final class zzqe extends zzpr {
    private final OnContentAdLoadedListener zzIM;

    public zzqe(OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzIM = onContentAdLoadedListener;
    }

    public final void zza(zzpf zzpf) {
        this.zzIM.onContentAdLoaded(new zzpi(zzpf));
    }
}
