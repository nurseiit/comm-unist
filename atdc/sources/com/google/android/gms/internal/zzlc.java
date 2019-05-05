package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.util.concurrent.atomic.AtomicBoolean;

@zzzn
public final class zzlc {
    private AdSize[] zzAy;
    private final zzup zzBb;
    private final AtomicBoolean zzBc;
    private final VideoController zzBd;
    private zzjk zzBe;
    private Correlator zzBf;
    private zzjz zzBg;
    private OnCustomRenderedAdLoadedListener zzBh;
    private ViewGroup zzBi;
    private int zzBj;
    private final zziu zzrQ;
    private VideoOptions zzsr;
    private boolean zzsu;
    private AppEventListener zzsw;
    private String zztV;
    private zzim zzzL;
    private AdListener zzzM;

    public zzlc(ViewGroup viewGroup) {
        this(viewGroup, null, false, zziu.zzAr, 0);
    }

    public zzlc(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zziu.zzAr, i);
    }

    public zzlc(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zziu.zzAr, 0);
    }

    public zzlc(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zziu.zzAr, i);
    }

    private zzlc(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zziu zziu, int i) {
        this(viewGroup, attributeSet, z, zziu, null, i);
    }

    private zzlc(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zziu zziu, zzjz zzjz, int i) {
        this.zzBb = new zzup();
        this.zzBd = new VideoController();
        this.zzBe = new zzld(this);
        this.zzBi = viewGroup;
        this.zzrQ = zziu;
        this.zzBg = null;
        this.zzBc = new AtomicBoolean(false);
        this.zzBj = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zziy zziy = new zziy(context, attributeSet);
                this.zzAy = zziy.zzg(z);
                this.zztV = zziy.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzaiy zzds = zzji.zzds();
                    AdSize adSize = this.zzAy[0];
                    int i2 = this.zzBj;
                    zziv zziv = new zziv(context, adSize);
                    zziv.zzAx = zzl(i2);
                    zzds.zza(viewGroup, zziv, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzji.zzds().zza(viewGroup, new zziv(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zziv zza(Context context, AdSize[] adSizeArr, int i) {
        zziv zziv = new zziv(context, adSizeArr);
        zziv.zzAx = zzl(i);
        return zziv;
    }

    private static boolean zzl(int i) {
        return i == 1;
    }

    public final void destroy() {
        try {
            if (this.zzBg != null) {
                this.zzBg.destroy();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to destroy AdView.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.zzzM;
    }

    public final AdSize getAdSize() {
        try {
            if (this.zzBg != null) {
                zziv zzam = this.zzBg.zzam();
                if (zzam != null) {
                    return zzam.zzdl();
                }
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to get the current AdSize.", e);
        }
        return this.zzAy != null ? this.zzAy[0] : null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzAy;
    }

    public final String getAdUnitId() {
        if (this.zztV == null && this.zzBg != null) {
            try {
                this.zztV = this.zzBg.getAdUnitId();
            } catch (RemoteException e) {
                zzajc.zzc("Failed to get ad unit id.", e);
            }
        }
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

    public final VideoController getVideoController() {
        return this.zzBd;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzsr;
    }

    public final boolean isLoading() {
        try {
            if (this.zzBg != null) {
                return this.zzBg.isLoading();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to check if ad is loading.", e);
        }
        return false;
    }

    public final void pause() {
        try {
            if (this.zzBg != null) {
                this.zzBg.pause();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to call pause.", e);
        }
    }

    public final void recordManualImpression() {
        if (!this.zzBc.getAndSet(true)) {
            try {
                if (this.zzBg != null) {
                    this.zzBg.zzao();
                }
            } catch (RemoteException e) {
                zzajc.zzc("Failed to record impression.", e);
            }
        }
    }

    public final void resume() {
        try {
            if (this.zzBg != null) {
                this.zzBg.resume();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to call resume.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzzM = adListener;
        this.zzBe.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzAy != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        if (this.zztV != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzsu = z;
        try {
            if (this.zzBg != null) {
                this.zzBg.setManualImpressionsEnabled(this.zzsu);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set manual impressions.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzBh = onCustomRenderedAdLoadedListener;
        try {
            if (this.zzBg != null) {
                this.zzBg.zza(onCustomRenderedAdLoadedListener != null ? new zznk(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzsr = videoOptions;
        try {
            if (this.zzBg != null) {
                this.zzBg.zza(videoOptions == null ? null : new zzlx(videoOptions));
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set video options.", e);
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
                if ((this.zzAy == null || this.zztV == null) && this.zzBg == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Object zza;
                Context context = this.zzBi.getContext();
                zziv zza2 = zza(context, this.zzAy, this.zzBj);
                if ("search_v2".equals(zza2.zzAs)) {
                    zza = zziz.zza(context, false, new zzjb(zzji.zzdt(), context, zza2, this.zztV));
                } else {
                    zza = zziz.zza(context, false, new zzja(zzji.zzdt(), context, zza2, this.zztV, this.zzBb));
                }
                this.zzBg = (zzjz) zza;
                this.zzBg.zza(new zzio(this.zzBe));
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
                if (this.zzsr != null) {
                    this.zzBg.zza(new zzlx(this.zzsr));
                }
                this.zzBg.setManualImpressionsEnabled(this.zzsu);
                try {
                    IObjectWrapper zzal = this.zzBg.zzal();
                    if (zzal != null) {
                        this.zzBi.addView((View) zzn.zzE(zzal));
                    }
                } catch (RemoteException e) {
                    zzajc.zzc("Failed to get an ad frame.", e);
                }
            }
            if (this.zzBg.zza(zziu.zza(this.zzBi.getContext(), zzla))) {
                this.zzBb.zzg(zzla.zzdz());
            }
        } catch (RemoteException e2) {
            zzajc.zzc("Failed to load ad.", e2);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzAy = adSizeArr;
        try {
            if (this.zzBg != null) {
                this.zzBg.zza(zza(this.zzBi.getContext(), this.zzAy, this.zzBj));
            }
        } catch (RemoteException e) {
            zzajc.zzc("Failed to set the ad size.", e);
        }
        this.zzBi.requestLayout();
    }

    public final boolean zza(zzjz zzjz) {
        if (zzjz == null) {
            return false;
        }
        try {
            IObjectWrapper zzal = zzjz.zzal();
            if (zzal == null || ((View) zzn.zzE(zzal)).getParent() != null) {
                return false;
            }
            this.zzBi.addView((View) zzn.zzE(zzal));
            this.zzBg = zzjz;
            return true;
        } catch (RemoteException e) {
            zzajc.zzc("Failed to get an ad frame.", e);
            return false;
        }
    }

    public final zzks zzae() {
        if (this.zzBg == null) {
            return null;
        }
        try {
            return this.zzBg.getVideoController();
        } catch (RemoteException e) {
            zzajc.zzc("Failed to retrieve VideoController.", e);
            return null;
        }
    }
}
