package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzapp;
import com.google.android.gms.internal.zzapu;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zzt extends zzbeq<zzapu, Void> implements zzbaz<Status> {
    private TaskCompletionSource<Void> zzalE;

    private zzt() {
    }

    /* synthetic */ zzt(zzr zzr) {
        this();
    }

    public final /* synthetic */ void setResult(Object obj) {
        Status status = (Status) obj;
        if (status.isSuccess()) {
            this.zzalE.setResult(null);
        } else {
            this.zzalE.setException(zzaa.zzb(status, "User Action indexing error, please try again."));
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzapu zzapu = (zzapu) zzb;
        this.zzalE = taskCompletionSource;
        zza((zzapp) zzapu.zzrf());
    }

    public abstract void zza(zzapp zzapp) throws RemoteException;

    public final void zzr(Status status) {
        zzbo.zzb(status.isSuccess() ^ 1, (Object) "Failed result must not be success.");
        this.zzalE.setException(zzaa.zzb(status, status.getStatusMessage()));
    }
}
