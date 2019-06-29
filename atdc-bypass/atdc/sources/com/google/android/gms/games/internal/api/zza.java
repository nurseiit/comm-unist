package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

public final class zza implements Achievements {
    public final Intent getAchievementsIntent(GoogleApiClient googleApiClient) {
        return Games.zzf(googleApiClient).zzuw();
    }

    public final void increment(GoogleApiClient googleApiClient, String str, int i) {
        googleApiClient.zze(new zzg(this, str, googleApiClient, str, i));
    }

    public final PendingResult<UpdateAchievementResult> incrementImmediate(GoogleApiClient googleApiClient, String str, int i) {
        return googleApiClient.zze(new zzh(this, str, googleApiClient, str, i));
    }

    public final PendingResult<LoadAchievementsResult> load(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.zzd(new zzb(this, googleApiClient, z));
    }

    public final void reveal(GoogleApiClient googleApiClient, String str) {
        googleApiClient.zze(new zzc(this, str, googleApiClient, str));
    }

    public final PendingResult<UpdateAchievementResult> revealImmediate(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zze(new zzd(this, str, googleApiClient, str));
    }

    public final void setSteps(GoogleApiClient googleApiClient, String str, int i) {
        googleApiClient.zze(new zzi(this, str, googleApiClient, str, i));
    }

    public final PendingResult<UpdateAchievementResult> setStepsImmediate(GoogleApiClient googleApiClient, String str, int i) {
        return googleApiClient.zze(new zzj(this, str, googleApiClient, str, i));
    }

    public final void unlock(GoogleApiClient googleApiClient, String str) {
        googleApiClient.zze(new zze(this, str, googleApiClient, str));
    }

    public final PendingResult<UpdateAchievementResult> unlockImmediate(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zze(new zzf(this, str, googleApiClient, str));
    }
}
