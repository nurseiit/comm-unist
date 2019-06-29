package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzaxd implements ResultCallback<Status> {
    private /* synthetic */ zzawy zzaxd;
    private /* synthetic */ long zzaxi;

    zzaxd(zzawy zzawy, long j) {
        this.zzaxd = zzawy;
        this.zzaxi = j;
    }

    public final /* synthetic */ void onResult(Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            this.zzaxd.zzc(this.zzaxi, status.getStatusCode());
        }
    }
}
