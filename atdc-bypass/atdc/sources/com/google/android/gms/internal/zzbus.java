package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;

abstract class zzbus extends zzbuq<Status> {
    zzbus(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        zzbo.zzaf(status.isSuccess() ^ 1);
        return status;
    }
}
