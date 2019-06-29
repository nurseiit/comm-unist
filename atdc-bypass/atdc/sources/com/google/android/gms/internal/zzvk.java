package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.common.internal.zzbo;

@zzzn
public final class zzvk implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzuw zzNc;
    private NativeAdMapper zzNd;
    private NativeCustomTemplateAd zzNe;

    public zzvk(zzuw zzuw) {
        this.zzNc = zzuw;
    }

    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        zzbo.zzcz("onAdClicked must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClicked.");
        try {
            this.zzNc.onAdClicked();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClicked.", e);
        }
    }

    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzbo.zzcz("onAdClicked must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClicked.");
        try {
            this.zzNc.onAdClicked();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClicked.", e);
        }
    }

    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        zzbo.zzcz("onAdClicked must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzNd;
        if (this.zzNe == null) {
            if (nativeAdMapper == null) {
                zzajc.zzaT("Could not call onAdClicked since NativeAdMapper is null.");
                return;
            } else if (!nativeAdMapper.getOverrideClickHandling()) {
                zzajc.zzaC("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzajc.zzaC("Adapter called onAdClicked.");
        try {
            this.zzNc.onAdClicked();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClicked.", e);
        }
    }

    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        zzbo.zzcz("onAdClosed must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClosed.");
        try {
            this.zzNc.onAdClosed();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClosed.", e);
        }
    }

    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzbo.zzcz("onAdClosed must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClosed.");
        try {
            this.zzNc.onAdClosed();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClosed.", e);
        }
    }

    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        zzbo.zzcz("onAdClosed must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClosed.");
        try {
            this.zzNc.onAdClosed();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClosed.", e);
        }
    }

    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        zzbo.zzcz("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder stringBuilder = new StringBuilder(55);
        stringBuilder.append("Adapter called onAdFailedToLoad with error. ");
        stringBuilder.append(i);
        zzajc.zzaC(stringBuilder.toString());
        try {
            this.zzNc.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        zzbo.zzcz("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder stringBuilder = new StringBuilder(55);
        stringBuilder.append("Adapter called onAdFailedToLoad with error ");
        stringBuilder.append(i);
        stringBuilder.append(".");
        zzajc.zzaC(stringBuilder.toString());
        try {
            this.zzNc.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        zzbo.zzcz("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder stringBuilder = new StringBuilder(55);
        stringBuilder.append("Adapter called onAdFailedToLoad with error ");
        stringBuilder.append(i);
        stringBuilder.append(".");
        zzajc.zzaC(stringBuilder.toString());
        try {
            this.zzNc.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        zzbo.zzcz("onAdImpression must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzNd;
        if (this.zzNe == null) {
            if (nativeAdMapper == null) {
                zzajc.zzaT("Could not call onAdImpression since NativeAdMapper is null. ");
                return;
            } else if (!nativeAdMapper.getOverrideImpressionRecording()) {
                zzajc.zzaC("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzajc.zzaC("Adapter called onAdImpression.");
        try {
            this.zzNc.onAdImpression();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdImpression.", e);
        }
    }

    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        zzbo.zzcz("onAdLeftApplication must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLeftApplication.");
        try {
            this.zzNc.onAdLeftApplication();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzbo.zzcz("onAdLeftApplication must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLeftApplication.");
        try {
            this.zzNc.onAdLeftApplication();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        zzbo.zzcz("onAdLeftApplication must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLeftApplication.");
        try {
            this.zzNc.onAdLeftApplication();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        zzbo.zzcz("onAdLoaded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLoaded.");
        try {
            this.zzNc.onAdLoaded();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzbo.zzcz("onAdLoaded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLoaded.");
        try {
            this.zzNc.onAdLoaded();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        zzbo.zzcz("onAdLoaded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLoaded.");
        this.zzNd = nativeAdMapper;
        try {
            this.zzNc.onAdLoaded();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        zzbo.zzcz("onAdOpened must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdOpened.");
        try {
            this.zzNc.onAdOpened();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdOpened.", e);
        }
    }

    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        zzbo.zzcz("onAdOpened must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdOpened.");
        try {
            this.zzNc.onAdOpened();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdOpened.", e);
        }
    }

    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        zzbo.zzcz("onAdOpened must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdOpened.");
        try {
            this.zzNc.onAdOpened();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdOpened.", e);
        }
    }

    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        zzbo.zzcz("onAppEvent must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAppEvent.");
        try {
            this.zzNc.onAppEvent(str, str2);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAppEvent.", e);
        }
    }

    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        zzbo.zzcz("onAdLoaded must be called on the main UI thread.");
        String str = "Adapter called onAdLoaded with template id ";
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        zzajc.zzaC(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        this.zzNe = nativeCustomTemplateAd;
        try {
            this.zzNc.onAdLoaded();
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof zzpm) {
            try {
                this.zzNc.zzb(((zzpm) nativeCustomTemplateAd).zzex(), str);
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onCustomClick.", e);
                return;
            }
        }
        zzajc.zzaT("Unexpected native custom template ad type.");
    }

    public final NativeAdMapper zzfx() {
        return this.zzNd;
    }

    public final NativeCustomTemplateAd zzfy() {
        return this.zzNe;
    }
}
