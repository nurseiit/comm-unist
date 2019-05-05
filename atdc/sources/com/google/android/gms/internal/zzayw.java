package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.hardware.display.VirtualDisplay;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.cast.CastRemoteDisplayApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public final class zzayw implements CastRemoteDisplayApi {
    private static final zzayo zzapq = new zzayo("CastRemoteDisplayApiImpl");
    private Api<?> zzayW;
    private VirtualDisplay zzayX;
    private final zzazl zzayY = new zzayx(this);

    public zzayw(Api api) {
        this.zzayW = api;
    }

    @TargetApi(19)
    private final void zzoP() {
        if (this.zzayX != null) {
            if (this.zzayX.getDisplay() != null) {
                zzayo zzayo = zzapq;
                int displayId = this.zzayX.getDisplay().getDisplayId();
                StringBuilder stringBuilder = new StringBuilder(38);
                stringBuilder.append("releasing virtual display: ");
                stringBuilder.append(displayId);
                zzayo.zzb(stringBuilder.toString(), new Object[0]);
            }
            this.zzayX.release();
            this.zzayX = null;
        }
    }

    public final PendingResult<CastRemoteDisplaySessionResult> startRemoteDisplay(GoogleApiClient googleApiClient, String str) {
        zzapq.zzb("startRemoteDisplay", new Object[0]);
        return googleApiClient.zze(new zzayy(this, googleApiClient, str));
    }

    public final PendingResult<CastRemoteDisplaySessionResult> stopRemoteDisplay(GoogleApiClient googleApiClient) {
        zzapq.zzb("stopRemoteDisplay", new Object[0]);
        return googleApiClient.zze(new zzayz(this, googleApiClient));
    }
}
