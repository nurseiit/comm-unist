package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

public final class zzbaq<TResult> extends zzbam {
    private final zzbeq<zzb, TResult> zzaBw;
    private final zzbem zzaBx;
    private final TaskCompletionSource<TResult> zzalE;

    public zzbaq(int i, zzbeq<zzb, TResult> zzbeq, TaskCompletionSource<TResult> taskCompletionSource, zzbem zzbem) {
        super(i);
        this.zzalE = taskCompletionSource;
        this.zzaBw = zzbeq;
        this.zzaBx = zzbem;
    }

    public final void zza(@NonNull zzbbt zzbbt, boolean z) {
        zzbbt.zza(this.zzalE, z);
    }

    public final void zza(zzbdd<?> zzbdd) throws DeadObjectException {
        try {
            this.zzaBw.zza(zzbdd.zzpJ(), this.zzalE);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            zzp(zzbam.zza(e2));
        }
    }

    public final void zzp(@NonNull Status status) {
        this.zzalE.trySetException(this.zzaBx.zzq(status));
    }
}
