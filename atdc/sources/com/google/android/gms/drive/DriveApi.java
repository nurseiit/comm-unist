package com.google.android.gms.drive;

import com.google.android.gms.common.api.BooleanResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.query.Query;
import java.util.List;

public interface DriveApi {

    public interface DriveContentsResult extends Result {
        DriveContents getDriveContents();
    }

    public interface DriveIdResult extends Result {
        DriveId getDriveId();
    }

    public interface MetadataBufferResult extends Releasable, Result {
        MetadataBuffer getMetadataBuffer();
    }

    @Deprecated
    PendingResult<Status> cancelPendingActions(GoogleApiClient googleApiClient, List<String> list);

    PendingResult<DriveIdResult> fetchDriveId(GoogleApiClient googleApiClient, String str);

    DriveFolder getAppFolder(GoogleApiClient googleApiClient);

    @Deprecated
    DriveFile getFile(GoogleApiClient googleApiClient, DriveId driveId);

    @Deprecated
    DriveFolder getFolder(GoogleApiClient googleApiClient, DriveId driveId);

    DriveFolder getRootFolder(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<BooleanResult> isAutobackupEnabled(GoogleApiClient googleApiClient);

    CreateFileActivityBuilder newCreateFileActivityBuilder();

    PendingResult<DriveContentsResult> newDriveContents(GoogleApiClient googleApiClient);

    OpenFileActivityBuilder newOpenFileActivityBuilder();

    PendingResult<MetadataBufferResult> query(GoogleApiClient googleApiClient, Query query);

    PendingResult<Status> requestSync(GoogleApiClient googleApiClient);
}
