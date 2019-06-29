package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzaqc extends zzapz {
    private /* synthetic */ zzaqb zzajY;

    zzaqc(zzaqb zzaqb) {
        this.zzajY = zzaqb;
    }

    public final void zzc(Status status) throws RemoteException {
        this.zzajY.setResult(status);
    }
}
