package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.Players.LoadPlayersResult;

public final class zzax implements Players {
    public final Intent getCompareProfileIntent(GoogleApiClient googleApiClient, Player player) {
        return Games.zzf(googleApiClient).zza(new PlayerEntity(player));
    }

    public final Player getCurrentPlayer(GoogleApiClient googleApiClient) {
        return Games.zzf(googleApiClient).zzut();
    }

    public final String getCurrentPlayerId(GoogleApiClient googleApiClient) {
        return Games.zzf(googleApiClient).zzah(true);
    }

    public final Intent getPlayerSearchIntent(GoogleApiClient googleApiClient) {
        return Games.zzf(googleApiClient).zzuD();
    }

    public final PendingResult<LoadPlayersResult> loadConnectedPlayers(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.zzd(new zzbe(this, googleApiClient, z));
    }

    public final PendingResult<LoadPlayersResult> loadInvitablePlayers(GoogleApiClient googleApiClient, int i, boolean z) {
        return googleApiClient.zzd(new zzba(this, googleApiClient, i, z));
    }

    public final PendingResult<LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.zzd(new zzbb(this, googleApiClient, i));
    }

    public final PendingResult<LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.zzd(new zzbd(this, googleApiClient, i));
    }

    public final PendingResult<LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzay(this, googleApiClient, str));
    }

    public final PendingResult<LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, String str, boolean z) {
        return googleApiClient.zzd(new zzaz(this, googleApiClient, str, z));
    }

    public final PendingResult<LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i, boolean z) {
        return googleApiClient.zzd(new zzbc(this, googleApiClient, i, z));
    }
}
