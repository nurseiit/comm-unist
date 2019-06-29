package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzi extends zza {
    private /* synthetic */ zzh zzamp;

    zzi(zzh zzh) {
        this.zzamp = zzh;
    }

    public final void zzh(Status status) throws RemoteException {
        this.zzamp.setResult(status);
    }
}
