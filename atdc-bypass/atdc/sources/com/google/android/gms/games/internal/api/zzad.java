package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;

abstract class zzad extends zza<LoadInvitationsResult> {
    private zzad(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzad(GoogleApiClient googleApiClient, zzac zzac) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzae(this, status);
    }
}
