package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;

final class zzbnc implements DriveFileResult {
    private final Status mStatus;
    private final DriveFile zzaOw;

    public zzbnc(Status status, DriveFile driveFile) {
        this.mStatus = status;
        this.zzaOw = driveFile;
    }

    public final DriveFile getDriveFile() {
        return this.zzaOw;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
