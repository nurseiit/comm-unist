package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

@zzzn
public final class zznk extends zzni {
    private final OnCustomRenderedAdLoadedListener zzBh;

    public zznk(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzBh = onCustomRenderedAdLoadedListener;
    }

    public final void zza(zzne zzne) {
        this.zzBh.onCustomRenderedAdLoaded(new zznd(zzne));
    }
}
