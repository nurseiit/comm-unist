package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzlh;

public class MobileAds {

    public static final class Settings {
        private final zzlh zzsc = new zzlh();

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }

        /* Access modifiers changed, original: final */
        public final zzlh zzad() {
            return this.zzsc;
        }
    }

    private MobileAds() {
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzlf.zzdD().getRewardedVideoAdInstance(context);
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzlf.zzdD().zza(context, str, settings == null ? null : settings.zzad());
    }

    public static void openDebugMenu(Context context, String str) {
        zzlf.zzdD().openDebugMenu(context, str);
    }

    public static void setAppMuted(boolean z) {
        zzlf.zzdD().setAppMuted(z);
    }

    public static void setAppVolume(float f) {
        zzlf.zzdD().setAppVolume(f);
    }
}
