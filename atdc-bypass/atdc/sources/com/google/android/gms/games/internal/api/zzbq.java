package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;

abstract class zzbq extends zza<LoadQuestsResult> {
    private zzbq(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbq(GoogleApiClient googleApiClient, zzbi zzbi) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbr(this, status);
    }
}
