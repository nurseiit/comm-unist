package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;

@zzzn
public final class zzadi extends zzade {
    private final RewardedVideoAdListener zzcS;

    public zzadi(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzcS = rewardedVideoAdListener;
    }

    public final void onRewardedVideoAdClosed() {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoAdClosed();
        }
    }

    public final void onRewardedVideoAdFailedToLoad(int i) {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoAdFailedToLoad(i);
        }
    }

    public final void onRewardedVideoAdLeftApplication() {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoAdLeftApplication();
        }
    }

    public final void onRewardedVideoAdLoaded() {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoAdLoaded();
        }
    }

    public final void onRewardedVideoAdOpened() {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoAdOpened();
        }
    }

    public final void onRewardedVideoStarted() {
        if (this.zzcS != null) {
            this.zzcS.onRewardedVideoStarted();
        }
    }

    public final void zza(zzacv zzacv) {
        if (this.zzcS != null) {
            this.zzcS.onRewarded(new zzadg(zzacv));
        }
    }
}
