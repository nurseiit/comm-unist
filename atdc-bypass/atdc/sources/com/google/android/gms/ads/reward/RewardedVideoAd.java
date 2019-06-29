package com.google.android.gms.ads.reward;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;

public interface RewardedVideoAd {
    @Deprecated
    void destroy();

    void destroy(Context context);

    String getMediationAdapterClassName();

    RewardedVideoAdListener getRewardedVideoAdListener();

    @Deprecated
    String getUserId();

    boolean isLoaded();

    void loadAd(String str, AdRequest adRequest);

    @Deprecated
    void pause();

    void pause(Context context);

    @Deprecated
    void resume();

    void resume(Context context);

    void setImmersiveMode(boolean z);

    void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener);

    @Deprecated
    void setUserId(String str);

    void show();
}
