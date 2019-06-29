package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;

abstract class zzbz extends zza<UpdateRequestsResult> {
    private zzbz(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbz(GoogleApiClient googleApiClient, zzbu zzbu) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzca(this, status);
    }
}
