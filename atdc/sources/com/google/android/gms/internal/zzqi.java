package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

final class zzqi implements Runnable {
    private /* synthetic */ PublisherAdView zzIQ;
    private /* synthetic */ zzjz zzIR;
    private /* synthetic */ zzqh zzIS;

    zzqi(zzqh zzqh, PublisherAdView publisherAdView, zzjz zzjz) {
        this.zzIS = zzqh;
        this.zzIQ = publisherAdView;
        this.zzIR = zzjz;
    }

    public final void run() {
        if (this.zzIQ.zza(this.zzIR)) {
            this.zzIS.zzIP.onPublisherAdViewLoaded(this.zzIQ);
        } else {
            zzajc.zzaT("Could not bind ad manager");
        }
    }
}
