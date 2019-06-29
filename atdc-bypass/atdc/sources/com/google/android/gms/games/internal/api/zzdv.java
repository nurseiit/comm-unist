package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.video.Videos.CaptureAvailableResult;

abstract class zzdv extends zza<CaptureAvailableResult> {
    private zzdv(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzdv(GoogleApiClient googleApiClient, zzds zzds) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzdw(this, status);
    }
}
