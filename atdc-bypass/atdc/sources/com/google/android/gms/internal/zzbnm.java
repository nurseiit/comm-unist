package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult;

abstract class zzbnm extends zzbmf<FileUploadPreferencesResult> {
    private /* synthetic */ zzbnh zzaOz;

    public zzbnm(zzbnh zzbnh, GoogleApiClient googleApiClient) {
        this.zzaOz = zzbnh;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzbnl(this.zzaOz, status, null, null);
    }
}
