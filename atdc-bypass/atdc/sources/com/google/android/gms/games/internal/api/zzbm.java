package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;

abstract class zzbm extends zza<AcceptQuestResult> {
    private zzbm(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbm(GoogleApiClient googleApiClient, zzbi zzbi) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbn(this, status);
    }
}
