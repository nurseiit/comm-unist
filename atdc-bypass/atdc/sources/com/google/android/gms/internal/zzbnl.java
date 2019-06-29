package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult;
import com.google.android.gms.drive.FileUploadPreferences;

final class zzbnl implements FileUploadPreferencesResult {
    private final Status mStatus;
    private final FileUploadPreferences zzaOB;

    private zzbnl(zzbnh zzbnh, Status status, FileUploadPreferences fileUploadPreferences) {
        this.mStatus = status;
        this.zzaOB = fileUploadPreferences;
    }

    /* synthetic */ zzbnl(zzbnh zzbnh, Status status, FileUploadPreferences fileUploadPreferences, zzbni zzbni) {
        this(zzbnh, status, fileUploadPreferences);
    }

    public final FileUploadPreferences getFileUploadPreferences() {
        return this.zzaOB;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
