package com.google.android.gms.analytics;

import com.google.android.gms.internal.zzaoc;

final class zze implements Runnable {
    private /* synthetic */ zzaoc zzadv;
    private /* synthetic */ int zzadw;
    private /* synthetic */ CampaignTrackingService zzadx;

    zze(CampaignTrackingService campaignTrackingService, int i, zzaoc zzaoc) {
        this.zzadx = campaignTrackingService;
        this.zzadw = i;
        this.zzadv = zzaoc;
    }

    public final void run() {
        boolean stopSelfResult = this.zzadx.stopSelfResult(this.zzadw);
        if (stopSelfResult) {
            this.zzadv.zza("Install campaign broadcast processed", Boolean.valueOf(stopSelfResult));
        }
    }
}
