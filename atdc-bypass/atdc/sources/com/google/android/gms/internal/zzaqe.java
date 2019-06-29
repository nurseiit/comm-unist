package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzaqe extends zzapz {
    private /* synthetic */ zzaqd zzajZ;

    zzaqe(zzaqd zzaqd) {
        this.zzajZ = zzaqd;
    }

    public final void zzc(Status status) throws RemoteException {
        this.zzajZ.setResult(status);
    }
}
