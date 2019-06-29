package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveIdResult;
import com.google.android.gms.drive.DriveId;

final class zzblz implements DriveIdResult {
    private final Status mStatus;
    private final DriveId zzaLV;

    public zzblz(Status status, DriveId driveId) {
        this.mStatus = status;
        this.zzaLV = driveId;
    }

    public final DriveId getDriveId() {
        return this.zzaLV;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
