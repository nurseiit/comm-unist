package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzalj;
import com.google.android.gms.internal.zzim;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzks;
import com.google.android.gms.internal.zzzn;
import java.util.Date;
import java.util.Set;

@zzzn
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, OnImmersiveModeUpdatedListener, com.google.android.gms.ads.mediation.zza, MediationRewardedVideoAdAdapter, zzalj {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private AdView zzcM;
    private InterstitialAd zzcN;
    private AdLoader zzcO;
    private Context zzcP;
    private InterstitialAd zzcQ;
    private MediationRewardedVideoAdListener zzcR;
    private RewardedVideoAdListener zzcS = new zza(this);

    static final class zzc extends AdListener implements AppEventListener, zzim {
        private AbstractAdViewAdapter zzcW;
        private MediationBannerListener zzcX;

        public zzc(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.zzcW = abstractAdViewAdapter;
            this.zzcX = mediationBannerListener;
        }

        public final void onAdClicked() {
            this.zzcX.onAdClicked(this.zzcW);
        }

        public final void onAdClosed() {
            this.zzcX.onAdClosed(this.zzcW);
        }

        public final void onAdFailedToLoad(int i) {
            this.zzcX.onAdFailedToLoad(this.zzcW, i);
        }

        public final void onAdLeftApplication() {
            this.zzcX.onAdLeftApplication(this.zzcW);
        }

        public final void onAdLoaded() {
            this.zzcX.onAdLoaded(this.zzcW);
        }

        public final void onAdOpened() {
            this.zzcX.onAdOpened(this.zzcW);
        }

        public final void onAppEvent(String str, String str2) {
            this.zzcX.zza(this.zzcW, str, str2);
        }
    }

    static final class zzd extends AdListener implements zzim {
        private AbstractAdViewAdapter zzcW;
        private MediationInterstitialListener zzcY;

        public zzd(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzcW = abstractAdViewAdapter;
            this.zzcY = mediationInterstitialListener;
        }

        public final void onAdClicked() {
            this.zzcY.onAdClicked(this.zzcW);
        }

        public final void onAdClosed() {
            this.zzcY.onAdClosed(this.zzcW);
        }

        public final void onAdFailedToLoad(int i) {
            this.zzcY.onAdFailedToLoad(this.zzcW, i);
        }

        public final void onAdLeftApplication() {
            this.zzcY.onAdLeftApplication(this.zzcW);
        }

        public final void onAdLoaded() {
            this.zzcY.onAdLoaded(this.zzcW);
        }

        public final void onAdOpened() {
            this.zzcY.onAdOpened(this.zzcW);
        }
    }

    static final class zze extends AdListener implements OnAppInstallAdLoadedListener, OnContentAdLoadedListener, OnCustomClickListener, OnCustomTemplateAdLoadedListener {
        private AbstractAdViewAdapter zzcW;
        private MediationNativeListener zzcZ;

        public zze(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.zzcW = abstractAdViewAdapter;
            this.zzcZ = mediationNativeListener;
        }

        public final void onAdClicked() {
            this.zzcZ.onAdClicked(this.zzcW);
        }

        public final void onAdClosed() {
            this.zzcZ.onAdClosed(this.zzcW);
        }

        public final void onAdFailedToLoad(int i) {
            this.zzcZ.onAdFailedToLoad(this.zzcW, i);
        }

        public final void onAdImpression() {
            this.zzcZ.onAdImpression(this.zzcW);
        }

        public final void onAdLeftApplication() {
            this.zzcZ.onAdLeftApplication(this.zzcW);
        }

        public final void onAdLoaded() {
        }

        public final void onAdOpened() {
            this.zzcZ.onAdOpened(this.zzcW);
        }

        public final void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.zzcZ.onAdLoaded(this.zzcW, new zza(nativeAppInstallAd));
        }

        public final void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.zzcZ.onAdLoaded(this.zzcW, new zzb(nativeContentAd));
        }

        public final void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.zzcZ.zza(this.zzcW, nativeCustomTemplateAd, str);
        }

        public final void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.zzcZ.zza(this.zzcW, nativeCustomTemplateAd);
        }
    }

    static class zza extends NativeAppInstallAdMapper {
        private final NativeAppInstallAd zzcU;

        public zza(NativeAppInstallAd nativeAppInstallAd) {
            this.zzcU = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.getVideoController());
        }

        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzcU);
            }
        }
    }

    static class zzb extends NativeContentAdMapper {
        private final NativeContentAd zzcV;

        public zzb(NativeContentAd nativeContentAd) {
            this.zzcV = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            if (nativeContentAd.getLogo() != null) {
                setLogo(nativeContentAd.getLogo());
            }
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeContentAd.getVideoController());
        }

        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.zzcV);
            }
        }
    }

    private final AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Builder builder = new Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String addKeyword : keywords) {
                builder.addKeyword(addKeyword);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            zzji.zzds();
            builder.addTestDevice(zzaiy.zzV(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            boolean z = true;
            if (mediationAdRequest.taggedForChildDirectedTreatment() != 1) {
                z = false;
            }
            builder.tagForChildDirectedTreatment(z);
        }
        builder.setIsDesignedForFamilies(mediationAdRequest.isDesignedForFamilies());
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    public View getBannerView() {
        return this.zzcM;
    }

    public Bundle getInterstitialAdapterInfo() {
        return new com.google.android.gms.ads.mediation.MediationAdapter.zza().zzB(1).zzjh();
    }

    public zzks getVideoController() {
        if (this.zzcM != null) {
            VideoController videoController = this.zzcM.getVideoController();
            if (videoController != null) {
                return videoController.zzae();
            }
        }
        return null;
    }

    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzcP = context.getApplicationContext();
        this.zzcR = mediationRewardedVideoAdListener;
        this.zzcR.onInitializationSucceeded(this);
    }

    public boolean isInitialized() {
        return this.zzcR != null;
    }

    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        if (this.zzcP == null || this.zzcR == null) {
            zzajc.e("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzcQ = new InterstitialAd(this.zzcP);
        this.zzcQ.zza(true);
        this.zzcQ.setAdUnitId(getAdUnitId(bundle));
        this.zzcQ.setRewardedVideoAdListener(this.zzcS);
        this.zzcQ.loadAd(zza(this.zzcP, mediationAdRequest, bundle2, bundle));
    }

    public void onDestroy() {
        if (this.zzcM != null) {
            this.zzcM.destroy();
            this.zzcM = null;
        }
        if (this.zzcN != null) {
            this.zzcN = null;
        }
        if (this.zzcO != null) {
            this.zzcO = null;
        }
        if (this.zzcQ != null) {
            this.zzcQ = null;
        }
    }

    public void onImmersiveModeUpdated(boolean z) {
        if (this.zzcN != null) {
            this.zzcN.setImmersiveMode(z);
        }
        if (this.zzcQ != null) {
            this.zzcQ.setImmersiveMode(z);
        }
    }

    public void onPause() {
        if (this.zzcM != null) {
            this.zzcM.pause();
        }
    }

    public void onResume() {
        if (this.zzcM != null) {
            this.zzcM.resume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcM = new AdView(context);
        this.zzcM.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzcM.setAdUnitId(getAdUnitId(bundle));
        this.zzcM.setAdListener(new zzc(this, mediationBannerListener));
        this.zzcM.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcN = new InterstitialAd(context);
        this.zzcN.setAdUnitId(getAdUnitId(bundle));
        this.zzcN.setAdListener(new zzd(this, mediationInterstitialListener));
        this.zzcN.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        zze zze = new zze(this, mediationNativeListener);
        AdLoader.Builder withAdListener = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(zze);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(zze);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(zze);
        }
        if (nativeMediationAdRequest.zzfz()) {
            for (String str : nativeMediationAdRequest.zzfA().keySet()) {
                withAdListener.forCustomTemplateAd(str, zze, ((Boolean) nativeMediationAdRequest.zzfA().get(str)).booleanValue() ? zze : null);
            }
        }
        this.zzcO = withAdListener.build();
        this.zzcO.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    public void showInterstitial() {
        this.zzcN.show();
    }

    public void showVideo() {
        this.zzcQ.show();
    }

    public abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
