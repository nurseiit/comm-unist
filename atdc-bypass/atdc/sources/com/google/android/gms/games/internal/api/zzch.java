package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult;

abstract class zzch extends zza<CommitSnapshotResult> {
    private zzch(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzch(GoogleApiClient googleApiClient, zzcc zzcc) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzci(this, status);
    }
}
