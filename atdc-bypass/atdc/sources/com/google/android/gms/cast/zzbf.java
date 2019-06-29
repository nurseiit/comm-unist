package com.google.android.gms.cast;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzbf implements ResultCallback<Status> {
    private final long zzaru;
    private /* synthetic */ zza zzarv;

    zzbf(zza zza, long j) {
        this.zzarv = zza;
        this.zzaru = j;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            RemoteMediaPlayer.this.zzaqP.zzc(this.zzaru, status.getStatusCode());
        }
    }
}
