package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzim;
import com.google.android.gms.internal.zzle;

public final class InterstitialAd {
    private final zzle zzsb;

    public InterstitialAd(Context context) {
        this.zzsb = new zzle(context);
        zzbo.zzb((Object) context, (Object) "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzsb.getAdListener();
    }

    public final String getAdUnitId() {
        return this.zzsb.getAdUnitId();
    }

    public final String getMediationAdapterClassName() {
        return this.zzsb.getMediationAdapterClassName();
    }

    public final boolean isLoaded() {
        return this.zzsb.isLoaded();
    }

    public final boolean isLoading() {
        return this.zzsb.isLoading();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(AdRequest adRequest) {
        this.zzsb.zza(adRequest.zzab());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzsb.setAdListener(adListener);
        if (adListener == null || !(adListener instanceof zzim)) {
            if (adListener == null) {
                this.zzsb.zza(null);
            }
            return;
        }
        this.zzsb.zza((zzim) adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzsb.setAdUnitId(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzsb.setImmersiveMode(z);
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzsb.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public final void show() {
        this.zzsb.show();
    }

    public final void zza(boolean z) {
        this.zzsb.zza(true);
    }
}
