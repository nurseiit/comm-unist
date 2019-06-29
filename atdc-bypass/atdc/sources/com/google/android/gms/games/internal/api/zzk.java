package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;

abstract class zzk extends zza<LoadAchievementsResult> {
    private zzk(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzk(GoogleApiClient googleApiClient, zzb zzb) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzl(this, status);
    }
}
