package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;

final class zzck implements DeleteSnapshotResult {
    private /* synthetic */ Status zzakB;

    zzck(zzcj zzcj, Status status) {
        this.zzakB = status;
    }

    public final String getSnapshotId() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
