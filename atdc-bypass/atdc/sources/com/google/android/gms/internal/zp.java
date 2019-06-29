package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.dynamiclinks.ShortDynamicLink;

final class zp extends zo {
    private TaskCompletionSource<ShortDynamicLink> zzalE;

    zp(TaskCompletionSource<ShortDynamicLink> taskCompletionSource) {
        this.zzalE = taskCompletionSource;
    }

    public final void zza(Status status, zx zxVar) {
        zzber.zza(status, zxVar, this.zzalE);
    }
}
