package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

abstract class zzban extends zzbam {
    protected final TaskCompletionSource<Void> zzalE;

    public zzban(int i, TaskCompletionSource<Void> taskCompletionSource) {
        super(i);
        this.zzalE = taskCompletionSource;
    }

    public void zza(@NonNull zzbbt zzbbt, boolean z) {
    }

    public final void zza(zzbdd<?> zzbdd) throws DeadObjectException {
        try {
            zzb(zzbdd);
        } catch (DeadObjectException e) {
            zzp(zzbam.zza((RemoteException) e));
            throw e;
        } catch (RemoteException e2) {
            zzp(zzbam.zza(e2));
        }
    }

    public abstract void zzb(zzbdd<?> zzbdd) throws RemoteException;

    public void zzp(@NonNull Status status) {
        this.zzalE.trySetException(new ApiException(status));
    }
}
