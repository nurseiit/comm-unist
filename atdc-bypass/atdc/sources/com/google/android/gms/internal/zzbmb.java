package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.MetadataBuffer;

final class zzbmb implements MetadataBufferResult {
    private final Status mStatus;
    private final MetadataBuffer zzaNO;
    private final boolean zzaNP;

    public zzbmb(Status status, MetadataBuffer metadataBuffer, boolean z) {
        this.mStatus = status;
        this.zzaNO = metadataBuffer;
        this.zzaNP = z;
    }

    public final MetadataBuffer getMetadataBuffer() {
        return this.zzaNO;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final void release() {
        if (this.zzaNO != null) {
            this.zzaNO.release();
        }
    }
}
