package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzw;

final class zzwf implements zzw {
    private /* synthetic */ zzwd zzNr;

    zzwf(zzwd zzwd) {
        this.zzNr = zzwd;
    }

    public final void onPause() {
        zzajc.zzaC("AdMobCustomTabsAdapter overlay is paused.");
    }

    public final void onResume() {
        zzajc.zzaC("AdMobCustomTabsAdapter overlay is resumed.");
    }

    public final void zzaA() {
        zzajc.zzaC("AdMobCustomTabsAdapter overlay is closed.");
        this.zzNr.zzNq.onAdClosed(this.zzNr);
        try {
            this.zzNr.zzNp.zzc(this.zzNr.zzNo);
        } catch (Exception e) {
            zzajc.zzb("Exception while unbinding from CustomTabsService.", e);
        }
    }

    public final void zzaB() {
        zzajc.zzaC("Opening AdMobCustomTabsAdapter overlay.");
        this.zzNr.zzNq.onAdOpened(this.zzNr);
    }
}
