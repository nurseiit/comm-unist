package com.google.android.gms.cast.framework.media;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzaf implements ResultCallback<Status> {
    private final long zzaru;
    private /* synthetic */ zza zzauz;

    zzaf(zza zza, long j) {
        this.zzauz = zza;
        this.zzaru = j;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            RemoteMediaClient.this.zzaqP.zzc(this.zzaru, status.getStatusCode());
        }
    }
}
