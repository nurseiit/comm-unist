package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzblc;
import com.google.android.gms.internal.zzbmn;

public class CreateFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private final zzblc zzaLX = new zzblc(0);
    private DriveContents zzaLY;
    private boolean zzaLZ;

    public IntentSender build(GoogleApiClient googleApiClient) {
        zzbo.zzb(Boolean.valueOf(this.zzaLZ), (Object) "Must call setInitialDriveContents to CreateFileActivityBuilder.");
        zzbo.zza(googleApiClient.isConnected(), (Object) "Client must be connected");
        if (this.zzaLY != null) {
            this.zzaLY.zzsN();
        }
        return this.zzaLX.build(googleApiClient);
    }

    public CreateFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.zzaLX.zza(driveId);
        return this;
    }

    public CreateFileActivityBuilder setActivityTitle(String str) {
        this.zzaLX.zzcQ(str);
        return this;
    }

    public CreateFileActivityBuilder setInitialDriveContents(DriveContents driveContents) {
        if (driveContents == null) {
            this.zzaLX.zzaM(1);
        } else if (!(driveContents instanceof zzbmn)) {
            throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
        } else if (driveContents.getDriveId() != null) {
            throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
        } else if (driveContents.zzsO()) {
            throw new IllegalArgumentException("DriveContents are already closed.");
        } else {
            this.zzaLX.zzaM(driveContents.zzsM().zzaLT);
            this.zzaLY = driveContents;
        }
        this.zzaLZ = true;
        return this;
    }

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet metadataChangeSet) {
        this.zzaLX.zza(metadataChangeSet);
        return this;
    }
}
