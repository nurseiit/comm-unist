package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzbmq implements ResultCallback<Status> {
    zzbmq(zzbmn zzbmn) {
    }

    public final /* synthetic */ void onResult(Result result) {
        if (((Status) result).isSuccess()) {
            zzbng.zzx("DriveContentsImpl", "Contents discarded");
        } else {
            zzbng.zzz("DriveContentsImpl", "Error discarding contents");
        }
    }
}
