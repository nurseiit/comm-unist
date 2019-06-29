package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;

abstract class zzbo extends zza<ClaimMilestoneResult> {
    private zzbo(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbo(GoogleApiClient googleApiClient, zzbi zzbi) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbp(this, status);
    }
}
