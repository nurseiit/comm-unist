package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzle;

public final class PublisherInterstitialAd {
    private final zzle zzsb;

    public PublisherInterstitialAd(Context context) {
        this.zzsb = new zzle(context, this);
        zzbo.zzb((Object) context, (Object) "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzsb.getAdListener();
    }

    public final String getAdUnitId() {
        return this.zzsb.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzsb.getAppEventListener();
    }

    public final String getMediationAdapterClassName() {
        return this.zzsb.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzsb.getOnCustomRenderedAdLoadedListener();
    }

    public final boolean isLoaded() {
        return this.zzsb.isLoaded();
    }

    public final boolean isLoading() {
        return this.zzsb.isLoading();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzsb.zza(publisherAdRequest.zzab());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzsb.setAdListener(adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzsb.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzsb.setAppEventListener(appEventListener);
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzsb.setCorrelator(correlator);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzsb.setImmersiveMode(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzsb.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public final void show() {
        this.zzsb.show();
    }
}
