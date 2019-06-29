package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;

final class zzco implements OpenSnapshotResult {
    private /* synthetic */ Status zzakB;

    zzco(zzcn zzcn, Status status) {
        this.zzakB = status;
    }

    public final String getConflictId() {
        return null;
    }

    public final Snapshot getConflictingSnapshot() {
        return null;
    }

    public final SnapshotContents getResolutionSnapshotContents() {
        return null;
    }

    public final Snapshot getSnapshot() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
