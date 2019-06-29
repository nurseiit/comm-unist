package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzbft extends zzbfn {
    private final zzbaz<Status> zzaIz;

    public zzbft(zzbaz<Status> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void zzaC(int i) throws RemoteException {
        this.zzaIz.setResult(new Status(i));
    }
}
