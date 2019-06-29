package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzk extends zza {
    private /* synthetic */ zzj zzamq;

    zzk(zzj zzj) {
        this.zzamq = zzj;
    }

    public final void zzi(Status status) throws RemoteException {
        this.zzamq.setResult(status);
    }
}
