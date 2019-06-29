package com.google.android.gms.safetynet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzber;
import com.google.android.gms.internal.zzcru;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzk extends zzcru {
    private /* synthetic */ TaskCompletionSource zzaCV;

    zzk(zzj zzj, TaskCompletionSource taskCompletionSource) {
        this.zzaCV = taskCompletionSource;
    }

    public final void zzF(Status status) {
        zzber.zza(status, null, this.zzaCV);
    }
}
