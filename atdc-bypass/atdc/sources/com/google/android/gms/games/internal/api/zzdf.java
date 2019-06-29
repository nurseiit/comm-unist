package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;

abstract class zzdf extends zza<CancelMatchResult> {
    private final String zzIi;

    public zzdf(String str, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzIi = str;
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzdg(this, status);
    }
}
