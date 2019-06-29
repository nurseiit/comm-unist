package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzio;
import com.google.android.gms.internal.zziu;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzjr;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzon;
import com.google.android.gms.internal.zzqd;
import com.google.android.gms.internal.zzqe;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.internal.zzqg;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzup;

public class AdLoader {
    private final Context mContext;
    private final zziu zzrQ;
    private final zzjr zzrR;

    public static class Builder {
        private final Context mContext;
        private final zzju zzrS;

        private Builder(Context context, zzju zzju) {
            this.mContext = context;
            this.zzrS = zzju;
        }

        public Builder(Context context, String str) {
            this((Context) zzbo.zzb((Object) context, (Object) "context cannot be null"), zzji.zzdt().zzb(context, str, new zzup()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.mContext, this.zzrS.zzaZ());
            } catch (RemoteException e) {
                zzajc.zzb("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAppInstallAd(OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzrS.zza(new zzqd(onAppInstallAdLoadedListener));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to add app install ad listener", e);
                return this;
            }
        }

        public Builder forContentAd(OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzrS.zza(new zzqe(onContentAdLoadedListener));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to add content ad listener", e);
                return this;
            }
        }

        public Builder forCustomTemplateAd(String str, OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, OnCustomClickListener onCustomClickListener) {
            try {
                this.zzrS.zza(str, new zzqg(onCustomTemplateAdLoadedListener), onCustomClickListener == null ? null : new zzqf(onCustomClickListener));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to add custom template ad listener", e);
                return this;
            }
        }

        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.zzrS.zza(new zzqh(onPublisherAdViewLoadedListener), new zziv(this.mContext, adSizeArr));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to add publisher banner ad listener", e);
                return this;
            }
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzrS.zzb(new zzio(adListener));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to set AdListener.", e);
                return this;
            }
        }

        public Builder withCorrelator(@NonNull Correlator correlator) {
            zzbo.zzu(correlator);
            try {
                this.zzrS.zzb(correlator.zzac());
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to set correlator.", e);
                return this;
            }
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzrS.zza(new zzon(nativeAdOptions));
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to specify native ad options", e);
                return this;
            }
        }

        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.zzrS.zza(publisherAdViewOptions);
                return this;
            } catch (RemoteException e) {
                zzajc.zzc("Failed to specify DFP banner ad options", e);
                return this;
            }
        }
    }

    AdLoader(Context context, zzjr zzjr) {
        this(context, zzjr, zziu.zzAr);
    }

    private AdLoader(Context context, zzjr zzjr, zziu zziu) {
        this.mContext = context;
        this.zzrR = zzjr;
        this.zzrQ = zziu;
    }

    private final void zza(zzla zzla) {
        try {
            this.zzrR.zzc(zziu.zza(this.mContext, zzla));
        } catch (RemoteException e) {
            zzajc.zzb("Failed to load ad.", e);
        }
    }

    public String getMediationAdapterClassName() {
        try {
            return this.zzrR.zzaI();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zzrR.isLoading();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to check if ad is loading.", e);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzab());
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzab());
    }
}
