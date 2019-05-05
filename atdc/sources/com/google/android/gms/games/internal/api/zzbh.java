package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;

public final class zzbh implements Quests {
    public final PendingResult<AcceptQuestResult> accept(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zze(new zzbi(this, googleApiClient, str));
    }

    public final PendingResult<ClaimMilestoneResult> claim(GoogleApiClient googleApiClient, String str, String str2) {
        return googleApiClient.zze(new zzbj(this, googleApiClient, str, str2));
    }

    public final Intent getQuestIntent(GoogleApiClient googleApiClient, String str) {
        return Games.zzf(googleApiClient).zzdk(str);
    }

    public final Intent getQuestsIntent(GoogleApiClient googleApiClient, int[] iArr) {
        return Games.zzf(googleApiClient).zzb(iArr);
    }

    public final PendingResult<LoadQuestsResult> load(GoogleApiClient googleApiClient, int[] iArr, int i, boolean z) {
        return googleApiClient.zzd(new zzbk(this, googleApiClient, iArr, i, z));
    }

    public final PendingResult<LoadQuestsResult> loadByIds(GoogleApiClient googleApiClient, boolean z, String... strArr) {
        return googleApiClient.zzd(new zzbl(this, googleApiClient, z, strArr));
    }

    public final void registerQuestUpdateListener(GoogleApiClient googleApiClient, QuestUpdateListener questUpdateListener) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzc(googleApiClient.zzp(questUpdateListener));
        }
    }

    public final void showStateChangedPopup(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzdl(str);
        }
    }

    public final void unregisterQuestUpdateListener(GoogleApiClient googleApiClient) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzuB();
        }
    }
}
