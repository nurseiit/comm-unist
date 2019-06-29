package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource.MetadataResult;
import com.google.android.gms.drive.Metadata;

final class zzbnx implements MetadataResult {
    private final Status mStatus;
    private final Metadata zzaOF;

    public zzbnx(Status status, Metadata metadata) {
        this.mStatus = status;
        this.zzaOF = metadata;
    }

    public final Metadata getMetadata() {
        return this.zzaOF;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
