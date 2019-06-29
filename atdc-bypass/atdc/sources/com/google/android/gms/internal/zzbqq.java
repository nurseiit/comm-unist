package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public final class zzbqq extends zzbkt {
    private final zzbaz<Status> zzaIz;

    public zzbqq(zzbaz<Status> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(status);
    }

    public final void onSuccess() throws RemoteException {
        this.zzaIz.setResult(Status.zzaBm);
    }
}
