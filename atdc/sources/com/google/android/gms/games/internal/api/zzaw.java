package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class zzaw implements Notifications {
    public final void clear(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzba(i);
        }
    }

    public final void clearAll(GoogleApiClient googleApiClient) {
        clear(googleApiClient, 63);
    }
}
