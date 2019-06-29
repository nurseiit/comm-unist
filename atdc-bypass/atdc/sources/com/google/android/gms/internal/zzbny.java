package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource.MetadataResult;

abstract class zzbny extends zzbmf<MetadataResult> {
    private zzbny(zzbnn zzbnn, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzbny(zzbnn zzbnn, GoogleApiClient googleApiClient, zzbno zzbno) {
        this(zzbnn, googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbnx(status, null);
    }
}
