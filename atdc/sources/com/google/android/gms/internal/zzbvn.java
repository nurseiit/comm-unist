package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;

abstract class zzbvn extends zzbvl<Status> {
    zzbvn(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: zzA */
    public Status zzb(Status status) {
        zzbo.zzaf(status.isSuccess() ^ 1);
        return status;
    }
}
