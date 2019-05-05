package com.google.ads.mediation;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

final class zza implements RewardedVideoAdListener {
    private /* synthetic */ AbstractAdViewAdapter zzcT;

    zza(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzcT = abstractAdViewAdapter;
    }

    public final void onRewarded(RewardItem rewardItem) {
        this.zzcT.zzcR.onRewarded(this.zzcT, rewardItem);
    }

    public final void onRewardedVideoAdClosed() {
        this.zzcT.zzcR.onAdClosed(this.zzcT);
        this.zzcT.zzcQ = null;
    }

    public final void onRewardedVideoAdFailedToLoad(int i) {
        this.zzcT.zzcR.onAdFailedToLoad(this.zzcT, i);
    }

    public final void onRewardedVideoAdLeftApplication() {
        this.zzcT.zzcR.onAdLeftApplication(this.zzcT);
    }

    public final void onRewardedVideoAdLoaded() {
        this.zzcT.zzcR.onAdLoaded(this.zzcT);
    }

    public final void onRewardedVideoAdOpened() {
        this.zzcT.zzcR.onAdOpened(this.zzcT);
    }

    public final void onRewardedVideoStarted() {
        this.zzcT.zzcR.onVideoStarted(this.zzcT);
    }
}
