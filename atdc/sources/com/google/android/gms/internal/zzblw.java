package com.google.android.gms.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveContentsResult;
import com.google.android.gms.drive.DriveContents;

final class zzblw implements Releasable, DriveContentsResult {
    private final Status mStatus;
    private final DriveContents zzaLY;

    public zzblw(Status status, DriveContents driveContents) {
        this.mStatus = status;
        this.zzaLY = driveContents;
    }

    public final DriveContents getDriveContents() {
        return this.zzaLY;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final void release() {
        if (this.zzaLY != null) {
            this.zzaLY.zzsN();
        }
    }
}
