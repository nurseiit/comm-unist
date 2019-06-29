package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

abstract class zzm extends zza<UpdateAchievementResult> {
    private final String zzIi;

    public zzm(String str, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzIi = str;
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzn(this, status);
    }
}
