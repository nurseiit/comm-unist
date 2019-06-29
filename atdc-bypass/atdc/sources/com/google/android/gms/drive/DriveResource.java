package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.events.ChangeListener;
import java.util.Set;

public interface DriveResource {

    public interface MetadataResult extends Result {
        Metadata getMetadata();
    }

    PendingResult<Status> addChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener);

    PendingResult<Status> addChangeSubscription(GoogleApiClient googleApiClient);

    PendingResult<Status> delete(GoogleApiClient googleApiClient);

    DriveId getDriveId();

    PendingResult<MetadataResult> getMetadata(GoogleApiClient googleApiClient);

    PendingResult<MetadataBufferResult> listParents(GoogleApiClient googleApiClient);

    PendingResult<Status> removeChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener);

    PendingResult<Status> removeChangeSubscription(GoogleApiClient googleApiClient);

    PendingResult<Status> setParents(GoogleApiClient googleApiClient, Set<DriveId> set);

    PendingResult<Status> trash(GoogleApiClient googleApiClient);

    PendingResult<Status> untrash(GoogleApiClient googleApiClient);

    PendingResult<MetadataResult> updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet);
}
