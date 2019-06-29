package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zzasl extends zzbeq<zzash, Void> {
    private TaskCompletionSource<Void> zzalE;

    private zzasl() {
    }

    /* synthetic */ zzasl(zzasj zzasj) {
        this();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzash zzash = (zzash) zzb;
        this.zzalE = taskCompletionSource;
        zza((zzasd) zzash.zzrf());
    }

    public abstract void zza(zzasd zzasd) throws RemoteException;

    /* Access modifiers changed, original: protected|final */
    public final void zzg(Status status) {
        zzber.zza(status, null, this.zzalE);
    }
}
