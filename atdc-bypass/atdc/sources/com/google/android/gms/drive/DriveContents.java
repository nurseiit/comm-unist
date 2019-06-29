package com.google.android.gms.drive;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveContentsResult;
import java.io.InputStream;
import java.io.OutputStream;

public interface DriveContents {
    PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet);

    PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, ExecutionOptions executionOptions);

    void discard(GoogleApiClient googleApiClient);

    DriveId getDriveId();

    InputStream getInputStream();

    int getMode();

    OutputStream getOutputStream();

    ParcelFileDescriptor getParcelFileDescriptor();

    PendingResult<DriveContentsResult> reopenForWrite(GoogleApiClient googleApiClient);

    zzc zzsM();

    void zzsN();

    boolean zzsO();
}
