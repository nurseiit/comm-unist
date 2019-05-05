package com.google.android.gms.analytics;

import android.os.Handler;
import com.google.android.gms.internal.zzaoc;

final class zzc implements Runnable {
    private /* synthetic */ zzaoc zzadv;
    private /* synthetic */ int zzadw;
    private /* synthetic */ CampaignTrackingService zzadx;
    private /* synthetic */ Handler zzs;

    zzc(CampaignTrackingService campaignTrackingService, zzaoc zzaoc, Handler handler, int i) {
        this.zzadx = campaignTrackingService;
        this.zzadv = zzaoc;
        this.zzs = handler;
        this.zzadw = i;
    }

    public final void run() {
        this.zzadx.zza(this.zzadv, this.zzs, this.zzadw);
    }
}
