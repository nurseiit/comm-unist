package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsIntent.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

@zzzn
public final class zzwd implements MediationInterstitialAdapter {
    private Uri mUri;
    private Activity zzNo;
    private zznl zzNp;
    private MediationInterstitialListener zzNq;

    public final void onDestroy() {
        zzajc.zzaC("Destroying AdMobCustomTabsAdapter adapter.");
        try {
            this.zzNp.zzc(this.zzNo);
        } catch (Exception e) {
            zzajc.zzb("Exception while unbinding from CustomTabsService.", e);
        }
    }

    public final void onPause() {
        zzajc.zzaC("Pausing AdMobCustomTabsAdapter adapter.");
    }

    public final void onResume() {
        zzajc.zzaC("Resuming AdMobCustomTabsAdapter adapter.");
    }

    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzNq = mediationInterstitialListener;
        if (this.zzNq == null) {
            zzajc.zzaT("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzajc.zzaT("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzNq.onAdFailedToLoad(this, 0);
        } else if (zznl.zzi(context)) {
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzajc.zzaT("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.zzNq.onAdFailedToLoad(this, 0);
                return;
            }
            this.zzNo = (Activity) context;
            this.mUri = Uri.parse(string);
            this.zzNp = new zznl();
            this.zzNp.zza(new zzwe(this));
            this.zzNp.zzd(this.zzNo);
            this.zzNq.onAdLoaded(this);
        } else {
            zzajc.zzaT("Default browser does not support custom tabs. Bailing out.");
            this.zzNq.onAdFailedToLoad(this, 0);
        }
    }

    public final void showInterstitial() {
        CustomTabsIntent build = new Builder(this.zzNp.zzdY()).build();
        build.intent.setData(this.mUri);
        zzagz.zzZr.post(new zzwg(this, new AdOverlayInfoParcel(new zzc(build.intent), null, new zzwf(this), null, new zzaje(0, 0, false))));
        zzbs.zzbD().zzz(false);
    }
}
