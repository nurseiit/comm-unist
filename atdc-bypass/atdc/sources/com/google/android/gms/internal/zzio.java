package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

@zzzn
public final class zzio extends zzjp {
    private final AdListener zzzM;

    public zzio(AdListener adListener) {
        this.zzzM = adListener;
    }

    public final AdListener getAdListener() {
        return this.zzzM;
    }

    public final void onAdClicked() {
        this.zzzM.onAdClicked();
    }

    public final void onAdClosed() {
        this.zzzM.onAdClosed();
    }

    public final void onAdFailedToLoad(int i) {
        this.zzzM.onAdFailedToLoad(i);
    }

    public final void onAdImpression() {
        this.zzzM.onAdImpression();
    }

    public final void onAdLeftApplication() {
        this.zzzM.onAdLeftApplication();
    }

    public final void onAdLoaded() {
        this.zzzM.onAdLoaded();
    }

    public final void onAdOpened() {
        this.zzzM.onAdOpened();
    }
}
