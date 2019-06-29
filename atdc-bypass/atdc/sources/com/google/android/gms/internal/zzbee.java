package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.tasks.TaskCompletionSource;

public abstract class zzbee<A extends zzb, L> {
    private final zzbdw<L> zzaEU;

    protected zzbee(zzbdw<L> zzbdw) {
        this.zzaEU = zzbdw;
    }

    public abstract void zzb(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public final zzbdy<L> zzqG() {
        return this.zzaEU.zzqG();
    }

    public final void zzqH() {
        this.zzaEU.clear();
    }
}
