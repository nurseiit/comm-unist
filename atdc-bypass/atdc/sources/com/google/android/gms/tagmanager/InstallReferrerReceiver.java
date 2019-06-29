package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;

public final class InstallReferrerReceiver extends CampaignTrackingReceiver {
    /* Access modifiers changed, original: protected|final */
    public final Class<? extends CampaignTrackingService> zzjm() {
        return InstallReferrerService.class;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzu(Context context, String str) {
        zzcx.zzfn(str);
        zzcx.zzK(context, str);
    }
}
