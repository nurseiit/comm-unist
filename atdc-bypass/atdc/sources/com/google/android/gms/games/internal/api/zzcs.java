package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult;

abstract class zzcs extends zza<LoadPlayerStatsResult> {
    private zzcs(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzcs(GoogleApiClient googleApiClient, zzcr zzcr) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzct(this, status);
    }
}
