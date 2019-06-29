package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;

abstract class zzbx extends zza<LoadRequestsResult> {
    private zzbx(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbx(GoogleApiClient googleApiClient, zzbu zzbu) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzby(this, status);
    }
}
