package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzaed implements MediationRewardedVideoAdListener {
    private final zzaea zzWV;

    public zzaed(zzaea zzaea) {
        this.zzWV = zzaea;
    }

    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onAdClicked must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClicked.");
        try {
            this.zzWV.zzv(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClicked.", e);
        }
    }

    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onAdClosed must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdClosed.");
        try {
            this.zzWV.zzu(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdClosed.", e);
        }
    }

    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        zzbo.zzcz("onAdFailedToLoad must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdFailedToLoad.");
        try {
            this.zzWV.zzd(zzn.zzw(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onAdLeftApplication must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLeftApplication.");
        try {
            this.zzWV.zzw(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onAdLoaded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdLoaded.");
        try {
            this.zzWV.zzr(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onAdOpened must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onAdOpened.");
        try {
            this.zzWV.zzs(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdOpened.", e);
        }
    }

    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        zzbo.zzcz("onInitializationFailed must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onInitializationFailed.");
        try {
            this.zzWV.zzc(zzn.zzw(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onInitializationFailed.", e);
        }
    }

    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onInitializationSucceeded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onInitializationSucceeded.");
        try {
            this.zzWV.zzq(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onInitializationSucceeded.", e);
        }
    }

    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        zzbo.zzcz("onRewarded must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onRewarded.");
        if (rewardItem != null) {
            try {
                this.zzWV.zza(zzn.zzw(mediationRewardedVideoAdAdapter), new zzaee(rewardItem));
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call onRewarded.", e);
                return;
            }
        }
        this.zzWV.zza(zzn.zzw(mediationRewardedVideoAdAdapter), new zzaee("", 1));
    }

    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        zzbo.zzcz("onVideoStarted must be called on the main UI thread.");
        zzajc.zzaC("Adapter called onVideoStarted.");
        try {
            this.zzWV.zzt(zzn.zzw(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onVideoStarted.", e);
        }
    }
}
