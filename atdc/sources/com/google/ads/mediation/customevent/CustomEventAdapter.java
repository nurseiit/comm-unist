package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzajc;

@KeepName
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {
    private View zzdf;
    private CustomEventBanner zzdg;
    private CustomEventInterstitial zzdh;

    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzdi;
        private final MediationBannerListener zzdj;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzdi = customEventAdapter;
            this.zzdj = mediationBannerListener;
        }

        public final void onClick() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdj.onClick(this.zzdi);
        }

        public final void onDismissScreen() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdj.onDismissScreen(this.zzdi);
        }

        public final void onFailedToReceiveAd() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdj.onFailedToReceiveAd(this.zzdi, ErrorCode.NO_FILL);
        }

        public final void onLeaveApplication() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdj.onLeaveApplication(this.zzdi);
        }

        public final void onPresentScreen() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdj.onPresentScreen(this.zzdi);
        }

        public final void onReceivedAd(View view) {
            zzajc.zzaC("Custom event adapter called onReceivedAd.");
            this.zzdi.zza(view);
            this.zzdj.onReceivedAd(this.zzdi);
        }
    }

    class zzb implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzdi;
        private final MediationInterstitialListener zzdk;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzdi = customEventAdapter;
            this.zzdk = mediationInterstitialListener;
        }

        public final void onDismissScreen() {
            zzajc.zzaC("Custom event adapter called onDismissScreen.");
            this.zzdk.onDismissScreen(this.zzdi);
        }

        public final void onFailedToReceiveAd() {
            zzajc.zzaC("Custom event adapter called onFailedToReceiveAd.");
            this.zzdk.onFailedToReceiveAd(this.zzdi, ErrorCode.NO_FILL);
        }

        public final void onLeaveApplication() {
            zzajc.zzaC("Custom event adapter called onLeaveApplication.");
            this.zzdk.onLeaveApplication(this.zzdi);
        }

        public final void onPresentScreen() {
            zzajc.zzaC("Custom event adapter called onPresentScreen.");
            this.zzdk.onPresentScreen(this.zzdi);
        }

        public final void onReceivedAd() {
            zzajc.zzaC("Custom event adapter called onReceivedAd.");
            this.zzdk.onReceivedAd(CustomEventAdapter.this);
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

    public final void destroy() {
        if (this.zzdg != null) {
            this.zzdg.destroy();
        }
        if (this.zzdh != null) {
            this.zzdh.destroy();
        }
    }

    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    public final View getBannerView() {
        return this.zzdf;
    }

    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzdg = (CustomEventBanner) zzh(customEventServerParameters.className);
        if (this.zzdg == null) {
            mediationBannerListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzdg.requestBannerAd(new zza(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.zzdh = (CustomEventInterstitial) zzh(customEventServerParameters.className);
        if (this.zzdh == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
        } else {
            this.zzdh.requestInterstitialAd(new zzb(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    public final void showInterstitial() {
        this.zzdh.showInterstitial();
    }
}
