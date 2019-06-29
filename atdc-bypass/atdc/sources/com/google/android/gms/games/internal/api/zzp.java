package com.google.android.gms.games.internal.api;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.event.Events.LoadEventsResult;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class zzp implements Events {
    @SuppressLint({"MissingRemoteException"})
    public final void increment(GoogleApiClient googleApiClient, String str, int i) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            if (zzb.isConnected()) {
                zzb.zzn(str, i);
            } else {
                googleApiClient.zze(new zzs(this, googleApiClient, str, i));
            }
        }
    }

    public final PendingResult<LoadEventsResult> load(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.zzd(new zzr(this, googleApiClient, z));
    }

    public final PendingResult<LoadEventsResult> loadByIds(GoogleApiClient googleApiClient, boolean z, String... strArr) {
        return googleApiClient.zzd(new zzq(this, googleApiClient, z, strArr));
    }
}
