package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzlf {
    private static zzlf zzBn;
    private static final Object zzuF = new Object();
    private zzkn zzBo;
    private RewardedVideoAd zzBp;

    private zzlf() {
    }

    public static zzlf zzdD() {
        zzlf zzlf;
        synchronized (zzuF) {
            if (zzBn == null) {
                zzBn = new zzlf();
            }
            zzlf = zzBn;
        }
        return zzlf;
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (zzuF) {
            RewardedVideoAd rewardedVideoAd;
            if (this.zzBp != null) {
                rewardedVideoAd = this.zzBp;
                return rewardedVideoAd;
            }
            this.zzBp = new zzadl(context, (zzacy) zziz.zza(context, false, new zzjg(zzji.zzdt(), context, new zzup())));
            rewardedVideoAd = this.zzBp;
            return rewardedVideoAd;
        }
    }

    public final void openDebugMenu(Context context, String str) {
        zzbo.zza(this.zzBo != null, (Object) "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.zzBo.zzb(zzn.zzw(context), str);
        } catch (RemoteException e) {
            zzajc.zzb("Unable to open debug menu.", e);
        }
    }

    public final void setAppMuted(boolean z) {
        zzbo.zza(this.zzBo != null, (Object) "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzBo.setAppMuted(z);
        } catch (RemoteException e) {
            zzajc.zzb("Unable to set app mute state.", e);
        }
    }

    public final void setAppVolume(float f) {
        boolean z = false;
        boolean z2 = 0.0f <= f && f <= 1.0f;
        zzbo.zzb(z2, (Object) "The app volume must be a value between 0 and 1 inclusive.");
        if (this.zzBo != null) {
            z = true;
        }
        zzbo.zza(z, (Object) "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzBo.setAppVolume(f);
        } catch (RemoteException e) {
            zzajc.zzb("Unable to set app volume.", e);
        }
    }

    public final void zza(Context context, String str, zzlh zzlh) {
        synchronized (zzuF) {
            if (this.zzBo != null) {
                return;
            } else if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            } else {
                try {
                    this.zzBo = (zzkn) zziz.zza(context, false, new zzje(zzji.zzdt(), context));
                    this.zzBo.initialize();
                    if (str != null) {
                        this.zzBo.zzc(str, zzn.zzw(new zzlg(this, context)));
                    }
                } catch (RemoteException e) {
                    zzajc.zzc("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }
}
