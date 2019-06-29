package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

final class zzbj implements zza {
    private /* synthetic */ PendingResult zzaIj;
    private /* synthetic */ TaskCompletionSource zzaIk;
    private /* synthetic */ zzbm zzaIl;
    private /* synthetic */ zzbn zzaIm;

    zzbj(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, zzbm zzbm, zzbn zzbn) {
        this.zzaIj = pendingResult;
        this.zzaIk = taskCompletionSource;
        this.zzaIl = zzbm;
        this.zzaIm = zzbn;
    }

    public final void zzo(Status status) {
        if (status.isSuccess()) {
            this.zzaIk.setResult(this.zzaIl.zzd(this.zzaIj.await(0, TimeUnit.MILLISECONDS)));
            return;
        }
        this.zzaIk.setException(this.zzaIm.zzy(status));
    }
}
