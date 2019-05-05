package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

@zzzn
public final class zzvp<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzuw zzNc;

    public zzvp(zzuw zzuw) {
        this.zzNc = zzuw;
    }

    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzajc.zzaC("Adapter called onClick.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdClicked();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdClicked.", e);
                return;
            }
        }
        zzajc.zzaT("onClick must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvq(this));
    }

    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzajc.zzaC("Adapter called onDismissScreen.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdClosed();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdClosed.", e);
                return;
            }
        }
        zzajc.zzaT("onDismissScreen must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvt(this));
    }

    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzajc.zzaC("Adapter called onDismissScreen.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdClosed();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdClosed.", e);
                return;
            }
        }
        zzajc.zzaT("onDismissScreen must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvy(this));
    }

    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
        stringBuilder.append("Adapter called onFailedToReceiveAd with error. ");
        stringBuilder.append(valueOf);
        zzajc.zzaC(stringBuilder.toString());
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdFailedToLoad(zzwb.zza(errorCode));
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzajc.zzaT("onFailedToReceiveAd must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvu(this, errorCode));
    }

    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 47);
        stringBuilder.append("Adapter called onFailedToReceiveAd with error ");
        stringBuilder.append(valueOf);
        stringBuilder.append(".");
        zzajc.zzaC(stringBuilder.toString());
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdFailedToLoad(zzwb.zza(errorCode));
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        zzajc.zzaT("onFailedToReceiveAd must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvz(this, errorCode));
    }

    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzajc.zzaC("Adapter called onLeaveApplication.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdLeftApplication();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdLeftApplication.", e);
                return;
            }
        }
        zzajc.zzaT("onLeaveApplication must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvv(this));
    }

    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzajc.zzaC("Adapter called onLeaveApplication.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdLeftApplication();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdLeftApplication.", e);
                return;
            }
        }
        zzajc.zzaT("onLeaveApplication must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzwa(this));
    }

    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzajc.zzaC("Adapter called onPresentScreen.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdOpened();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdOpened.", e);
                return;
            }
        }
        zzajc.zzaT("onPresentScreen must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvw(this));
    }

    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzajc.zzaC("Adapter called onPresentScreen.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdOpened();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdOpened.", e);
                return;
            }
        }
        zzajc.zzaT("onPresentScreen must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvr(this));
    }

    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzajc.zzaC("Adapter called onReceivedAd.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdLoaded();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdLoaded.", e);
                return;
            }
        }
        zzajc.zzaT("onReceivedAd must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvx(this));
    }

    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzajc.zzaC("Adapter called onReceivedAd.");
        zzji.zzds();
        if (zzaiy.zzil()) {
            try {
                this.zzNc.onAdLoaded();
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onAdLoaded.", e);
                return;
            }
        }
        zzajc.zzaT("onReceivedAd must be called on the main UI thread.");
        zzaiy.zzaaH.post(new zzvs(this));
    }
}
