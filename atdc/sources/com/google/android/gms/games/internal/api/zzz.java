package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;

abstract class zzz extends zza<LoadGamesResult> {
    private zzz(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzz(GoogleApiClient googleApiClient, zzy zzy) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzaa(this, status);
    }
}
