package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

public final class zzab implements Invitations {
    public final Intent getInvitationInboxIntent(GoogleApiClient googleApiClient) {
        return Games.zzf(googleApiClient).zzuy();
    }

    public final PendingResult<LoadInvitationsResult> loadInvitations(GoogleApiClient googleApiClient) {
        return loadInvitations(googleApiClient, 0);
    }

    public final PendingResult<LoadInvitationsResult> loadInvitations(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.zzd(new zzac(this, googleApiClient, i));
    }

    public final void registerInvitationListener(GoogleApiClient googleApiClient, OnInvitationReceivedListener onInvitationReceivedListener) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zza(googleApiClient.zzp(onInvitationReceivedListener));
        }
    }

    public final void unregisterInvitationListener(GoogleApiClient googleApiClient) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzuz();
        }
    }
}
