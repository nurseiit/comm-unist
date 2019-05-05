package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;

final class zr extends zo {
    private TaskCompletionSource<PendingDynamicLinkData> zzalE;

    public zr(TaskCompletionSource<PendingDynamicLinkData> taskCompletionSource) {
        this.zzalE = taskCompletionSource;
    }

    public final void zza(Status status, zi ziVar) {
        zzber.zza(status, ziVar == null ? null : new PendingDynamicLinkData(ziVar), this.zzalE);
    }
}
