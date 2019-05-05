package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.event.Events.LoadEventsResult;

abstract class zzt extends zza<LoadEventsResult> {
    private zzt(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzt(GoogleApiClient googleApiClient, zzq zzq) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzu(this, status);
    }
}
