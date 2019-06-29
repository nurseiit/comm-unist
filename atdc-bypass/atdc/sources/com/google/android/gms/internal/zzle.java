package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

@zzzn
public final class zzle {
    private final Context mContext;
    private final zzup zzBb;
    private Correlator zzBf;
    private zzjz zzBg;
    private OnCustomRenderedAdLoadedListener zzBh;
    private PublisherInterstitialAd zzBl;
    private boolean zzBm;
    private RewardedVideoAdListener zzcS;
    private final zziu zzrQ;
    private AppEventListener zzsw;
    private String zztV;
    private boolean zzuj;
    private zzim zzzL;
    private AdListener zzzM;

    public zzle(Context context) {
        this(context, zziu.zzAr, null);
    }

    public zzle(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, zziu.zzAr, publisherInterstitialAd);
    }

    private zzle(Context context, zziu zziu, PublisherInterstitialAd publisherInterstitialAd) {
        this.zzBb = new zzup();
        this.mContext = context;
        this.zzrQ = zziu;
        this.zzBl = publisherInterstitialAd;
    }

    private final void zzK(String str) {
        if (this.zzBg == null) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 63);
            stringBuilder.append("The ad unit ID must be set on InterstitialAd before ");
            stringBuilder.append(str);
            stringBuilder.append(" is called.");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public final AdListener getAdListener() {
        return this.zzzM;
    }

    public final String getAdUnitId() {
        return this.zztV;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzsw;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzBg != null) {
                return this.zzBg.zzaI();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzBh;
    }

    public final boolean isLoaded() {
        try {
            return this.zzBg == null ? false : this.zzBg.isReady();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to check if ad is ready.", e);
            return false;
        }
    }

    public final boolean isLoading() {
        try {
            return this.zzBg == null ? false : this.zzBg.isLoading();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public final void setAdListener(AdListener adListener) {
        try {
            this.zzzM = adListener;
            if (this.zzBg != null) {
                this.zzBg.zza(adListener != null ? new zzio(adListener) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the AdListener.", e);
        }
    }

    public final void setAdUnitId(String str) {
        if (this.zztV != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.zztV = str;
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzsw = appEventListener;
            if (this.zzBg != null) {
                this.zzBg.zza(appEventListener != null ? new zzix(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the AppEventListener.", e);
        }
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzBf = correlator;
        try {
            if (this.zzBg != null) {
                this.zzBg.zza(this.zzBf == null ? null : this.zzBf.zzac());
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set correlator.", e);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.zzuj = z;
            if (this.zzBg != null) {
                this.zzBg.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set immersive mode", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.zzBh = onCustomRenderedAdLoadedListener;
            if (this.zzBg != null) {
                this.zzBg.zza(onCustomRenderedAdLoadedListener != null ? new zznk(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the OnCustomRenderedAdLoadedListener.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.zzcS = rewardedVideoAdListener;
            if (this.zzBg != null) {
                this.zzBg.zza(rewardedVideoAdListener != null ? new zzadi(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the AdListener.", e);
        }
    }

    public final void show() {
        try {
            zzK("show");
            this.zzBg.showInterstitial();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to show interstitial.", e);
        }
    }

    public final void zza(zzim zzim) {
        try {
            this.zzzL = zzim;
            if (this.zzBg != null) {
                this.zzBg.zza(zzim != null ? new zzin(zzim) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the AdClickListener.", e);
        }
    }

    public final void zza(zzla zzla) {
        try {
            if (this.zzBg == null) {
                String str = "loadAd";
                if (this.zztV == null) {
                    zzK(str);
                }
                zziv zzdk = this.zzBm ? zziv.zzdk() : new zziv();
                zziz zzdt = zzji.zzdt();
                Context context = this.mContext;
                this.zzBg = (zzjz) zziz.zza(context, false, new zzjc(zzdt, context, zzdk, this.zztV, this.zzBb));
                if (this.zzzM != null) {
                    this.zzBg.zza(new zzio(this.zzzM));
                }
                if (this.zzzL != null) {
                    this.zzBg.zza(new zzin(this.zzzL));
                }
                if (this.zzsw != null) {
                    this.zzBg.zza(new zzix(this.zzsw));
                }
                if (this.zzBh != null) {
                    this.zzBg.zza(new zznk(this.zzBh));
                }
                if (this.zzBf != null) {
                    this.zzBg.zza(this.zzBf.zzac());
                }
                if (this.zzcS != null) {
                    this.zzBg.zza(new zzadi(this.zzcS));
                }
                this.zzBg.setImmersiveMode(this.zzuj);
            }
            if (this.zzBg.zza(zziu.zza(this.mContext, zzla))) {
                this.zzBb.zzg(zzla.zzdz());
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to load ad.", e);
        }
    }

    public final void zza(boolean z) {
        this.zzBm = true;
    }
}
