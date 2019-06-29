package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult;

abstract class zzdx extends zza<CaptureCapabilitiesResult> {
    private zzdx(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzdx(GoogleApiClient googleApiClient, zzds zzds) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzdy(this, status);
    }
}
