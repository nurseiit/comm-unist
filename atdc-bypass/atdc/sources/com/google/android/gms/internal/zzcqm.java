package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.panorama.PanoramaApi.PanoramaResult;

final class zzcqm implements PanoramaResult {
    private final Status mStatus;
    private final Intent zzbzT;

    public zzcqm(Status status, Intent intent) {
        this.mStatus = (Status) zzbo.zzu(status);
        this.zzbzT = intent;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final Intent getViewerIntent() {
        return this.zzbzT;
    }
}
