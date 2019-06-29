package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;

public abstract class zzaxg<R extends Result> extends zzaxs<R> {
    protected zzayt zzarw;

    public zzaxg(zzawy zzawy) {
        super(zzawy.zzXj);
    }

    public abstract void execute();

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        execute();
    }
}
