package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.zza;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;

abstract class zzcj extends zza<DeleteSnapshotResult> {
    private zzcj(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzcj(GoogleApiClient googleApiClient, zzcc zzcc) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzck(this, status);
    }
}
