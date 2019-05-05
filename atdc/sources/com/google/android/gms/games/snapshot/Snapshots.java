package com.google.android.gms.games.snapshot;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public interface Snapshots {
    public static final int DISPLAY_LIMIT_NONE = -1;
    public static final String EXTRA_SNAPSHOT_METADATA = "com.google.android.gms.games.SNAPSHOT_METADATA";
    public static final String EXTRA_SNAPSHOT_NEW = "com.google.android.gms.games.SNAPSHOT_NEW";
    public static final int RESOLUTION_POLICY_HIGHEST_PROGRESS = 4;
    public static final int RESOLUTION_POLICY_LAST_KNOWN_GOOD = 2;
    public static final int RESOLUTION_POLICY_LONGEST_PLAYTIME = 1;
    public static final int RESOLUTION_POLICY_MANUAL = -1;
    public static final int RESOLUTION_POLICY_MOST_RECENTLY_MODIFIED = 3;

    public interface CommitSnapshotResult extends Result {
        SnapshotMetadata getSnapshotMetadata();
    }

    public interface DeleteSnapshotResult extends Result {
        String getSnapshotId();
    }

    public interface LoadSnapshotsResult extends Releasable, Result {
        SnapshotMetadataBuffer getSnapshots();
    }

    public interface OpenSnapshotResult extends Result {
        String getConflictId();

        Snapshot getConflictingSnapshot();

        SnapshotContents getResolutionSnapshotContents();

        Snapshot getSnapshot();
    }

    PendingResult<CommitSnapshotResult> commitAndClose(GoogleApiClient googleApiClient, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange);

    PendingResult<DeleteSnapshotResult> delete(GoogleApiClient googleApiClient, SnapshotMetadata snapshotMetadata);

    void discardAndClose(GoogleApiClient googleApiClient, Snapshot snapshot);

    int getMaxCoverImageSize(GoogleApiClient googleApiClient);

    int getMaxDataSize(GoogleApiClient googleApiClient);

    Intent getSelectSnapshotIntent(GoogleApiClient googleApiClient, String str, boolean z, boolean z2, int i);

    SnapshotMetadata getSnapshotFromBundle(Bundle bundle);

    PendingResult<LoadSnapshotsResult> load(GoogleApiClient googleApiClient, boolean z);

    PendingResult<OpenSnapshotResult> open(GoogleApiClient googleApiClient, SnapshotMetadata snapshotMetadata);

    PendingResult<OpenSnapshotResult> open(GoogleApiClient googleApiClient, SnapshotMetadata snapshotMetadata, int i);

    PendingResult<OpenSnapshotResult> open(GoogleApiClient googleApiClient, String str, boolean z);

    PendingResult<OpenSnapshotResult> open(GoogleApiClient googleApiClient, String str, boolean z, int i);

    PendingResult<OpenSnapshotResult> resolveConflict(GoogleApiClient googleApiClient, String str, Snapshot snapshot);

    PendingResult<OpenSnapshotResult> resolveConflict(GoogleApiClient googleApiClient, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents);
}
