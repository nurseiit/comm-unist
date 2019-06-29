package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzajc;

@KeepName
@KeepForSdkWithMembers
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private CustomEventBanner zzacO;
    private CustomEventInterstitial zzacP;
    private CustomEventNative zzacQ;
    private View zzdf;

    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzacR;
        private final MediationBannerListener zzcX;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzacR = customEventAdapter;
            this.zzcX = mediationBannerListener;
        }

        public final void onAdClicked() {
            zzajc.zzaC("Custom event adapter called onAdClicked.");
            this.zzcX.onAdClicked(this.zzacR);
        }

        public final void onAdClosed() {
            zzajc.zzaC("Custom event adapter called onAdClosed.");
            this.zzcX.onAdClosed(this.zzacR);
        }

        public final void onAdFailedToLoad(int i) {
            zzajc.zzaC("Custom event adapter called onAdFailedToLoad.");
            this.zzcX.onAdFailedToLoad(this.zzacR, i);
        }

        public final void onAdLeftApplication() {
            zzajc.zzaC("Custom event adapter called onAdLeftApplication.");
            this.zzcX.onAdLeftApplication(this.zzacR);
        }

        public final void onAdLoaded(View view) {
            zzajc.zzaC("Custom event adapter called onAdLoaded.");
            this.zzacR.zza(view);
            this.zzcX.onAdLoaded(this.zzacR);
        }

        public final void onAdOpened() {
            zzajc.zzaC("Custom event adapter called onAdOpened.");
            this.zzcX.onAdOpened(this.zzacR);
        }
    }

    class zzb implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzacR;
        private final MediationInterstitialListener zzcY;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzacR = customEventAdapter;
            this.zzcY = mediationInterstitialListener;
        }

        public final void onAdClicked() {
            zzajc.zzaC("Custom event adapter called onAdClicked.");
            this.zzcY.onAdClicked(this.zzacR);
        }

        public final void onAdClosed() {
            zzajc.zzaC("Custom event adapter called onAdClosed.");
            this.zzcY.onAdClosed(this.zzacR);
        }

        public final void onAdFailedToLoad(int i) {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzcY.onAdFailedToLoad(this.zzacR, i);
        }

        public final void onAdLeftApplication() {
            zzajc.zzaC("Custom event adapter called onAdLeftApplication.");
            this.zzcY.onAdLeftApplication(this.zzacR);
        }

        public final void onAdLoaded() {
            zzajc.zzaC("Custom event adapter called onReceivedAd.");
            this.zzcY.onAdLoaded(CustomEventAdapter.this);
        }

        public final void onAdOpened() {
            zzajc.zzaC("Custom event adapter called onAdOpened.");
            this.zzcY.onAdOpened(this.zzacR);
        }
    }

    static class zzc implements CustomEventNativeListener {
        private final CustomEventAdapter zzacR;
        private final MediationNativeListener zzcZ;

        public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzacR = customEventAdapter;
            this.zzcZ = mediationNativeListener;
        }

        public final void onAdClicked() {
            zzajc.zzaC("Custom event adapter called onAdClicked.");
            this.zzcZ.onAdClicked(this.zzacR);
        }

        public final void onAdClosed() {
            zzajc.zzaC("Custom event adapter called onAdClosed.");
            this.zzcZ.onAdClosed(this.zzacR);
        }

        public final void onAdFailedToLoad(int i) {
            zzajc.zzaC("Custom event adapter called onAdFailedToLoad.");
            this.zzcZ.onAdFailedToLoad(this.zzacR, i);
        }

        public final void onAdImpression() {
            zzajc.zzaC("Custom event adapter called onAdImpression.");
            this.zzcZ.onAdImpression(this.zzacR);
        }

        public final void onAdLeftApplication() {
            zzajc.zzaC("Custom event adapter called onAdLeftApplication.");
            this.zzcZ.onAdLeftApplication(this.zzacR);
        }

        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzajc.zzaC("Custom event adapter called onAdLoaded.");
            this.zzcZ.onAdLoaded(this.zzacR, nativeAdMapper);
        }

        public final void onAdOpened() {
            zzajc.zzaC("Custom event adapter called onAdOpened.");
            this.zzcZ.onAdOpened(this.zzacR);
        }
    }

    private final void zza(View view) {
        this.zzdf = view;
    }

    private static <T> T zzh(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Throwable th) {
            String valueOf = String.valueOf(th.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 46) + String.valueOf(valueOf).length());
            stringBuilder.append("Could not instantiate custom event adapter: ");
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            zzajc.zzaT(stringBuilder.toString());
            return null;
        }
    }

    public final View getBannerView() {
        return this.zzdf;
    }

    public final void onDestroy() {
        if (this.zzacO != null) {
            this.zzacO.onDestroy();
        }
        if (this.zzacP != null) {
            this.zzacP.onDestroy();
        }
        if (this.zzacQ != null) {
            this.zzacQ.onDestroy();
        }
    }

    public final void onPause() {
        if (this.zzacO != null) {
            this.zzacO.onPause();
        }
        if (this.zzacP != null) {
            this.zzacP.onPause();
        }
        if (this.zzacQ != null) {
            this.zzacQ.onPause();
        }
    }

    public final void onResume() {
        if (this.zzacO != null) {
            this.zzacO.onResume();
        }
        if (this.zzacP != null) {
            this.zzacP.onResume();
        }
        if (this.zzacQ != null) {
            this.zzacQ.onResume();
        }
    }

    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzacO = (CustomEventBanner) zzh(bundle.getString("class_name"));
        if (this.zzacO == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzacO.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzacP = (CustomEventInterstitial) zzh(bundle.getString("class_name"));
        if (this.zzacP == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzacP.requestInterstitialAd(context, new zzb(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.zzacQ = (CustomEventNative) zzh(bundle.getString("class_name"));
        if (this.zzacQ == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzacQ.requestNativeAd(context, new zzc(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    public final void showInterstitial() {
        this.zzacP.showInterstitial();
    }
}
