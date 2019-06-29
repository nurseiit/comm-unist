package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzadl implements RewardedVideoAd {
    private final Context mContext;
    private final Object mLock = new Object();
    private final zzacy zzWx;
    private RewardedVideoAdListener zzcS;

    public zzadl(Context context, zzacy zzacy) {
        this.zzWx = zzacy;
        this.mContext = context;
    }

    public final void destroy() {
        destroy(null);
    }

    public final void destroy(Context context) {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return;
            }
            try {
                this.zzWx.zzh(zzn.zzw(context));
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward destroy to RewardedVideoAd", e);
            }
        }
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzWx != null) {
                return this.zzWx.getMediationAdapterClassName();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.mLock) {
            rewardedVideoAdListener = this.zzcS;
        }
        return rewardedVideoAdListener;
    }

    public final String getUserId() {
        zzajc.zzaT("RewardedVideoAd.getUserId() is deprecated. Please do not call this method.");
        return null;
    }

    public final boolean isLoaded() {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return false;
            }
            try {
                boolean isLoaded = this.zzWx.isLoaded();
                return isLoaded;
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward isLoaded to RewardedVideoAd", e);
                return false;
            }
        }
    }

    public final void loadAd(String str, AdRequest adRequest) {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return;
            }
            try {
                this.zzWx.zza(new zzadj(zziu.zza(this.mContext, adRequest.zzab()), str));
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward loadAd to RewardedVideoAd", e);
            }
        }
    }

    public final void pause() {
        pause(null);
    }

    public final void pause(Context context) {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return;
            }
            try {
                this.zzWx.zzf(zzn.zzw(context));
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward pause to RewardedVideoAd", e);
            }
        }
    }

    public final void resume() {
        resume(null);
    }

    public final void resume(Context context) {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return;
            }
            try {
                this.zzWx.zzg(zzn.zzw(context));
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward resume to RewardedVideoAd", e);
            }
        }
    }

    public final void setImmersiveMode(boolean z) {
        synchronized (this.mLock) {
            if (this.zzWx != null) {
                try {
                    this.zzWx.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzajc.zzc("Could not forward setImmersiveMode to RewardedVideoAd", e);
                }
            }
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.mLock) {
            this.zzcS = rewardedVideoAdListener;
            if (this.zzWx != null) {
                try {
                    this.zzWx.zza(new zzadi(rewardedVideoAdListener));
                } catch (RemoteException e) {
                    zzajc.zzc("Could not forward setRewardedVideoAdListener to RewardedVideoAd", e);
                }
            }
        }
    }

    public final void setUserId(String str) {
        zzajc.zzaT("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    public final void show() {
        synchronized (this.mLock) {
            if (this.zzWx == null) {
                return;
            }
            try {
                this.zzWx.show();
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward show to RewardedVideoAd", e);
            }
        }
    }
}
