package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdn;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zzk extends zzbeq<zzd, Status> {
    private TaskCompletionSource<Status> zzalE;

    private zzk() {
    }

    /* synthetic */ zzk(zzg zzg) {
        this();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzbdn zzEC() {
        return new zzl(this);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzd zzd = (zzd) zzb;
        this.zzalE = taskCompletionSource;
        zza((zzu) zzd.zzrf());
    }

    public abstract void zza(zzu zzu) throws RemoteException;
}
