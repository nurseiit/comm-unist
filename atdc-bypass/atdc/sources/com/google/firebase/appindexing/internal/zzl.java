package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdo;

final class zzl extends zzbdo {
    private /* synthetic */ zzk zzbVN;

    zzl(zzk zzk) {
        this.zzbVN = zzk;
    }

    public final void zzu(Status status) throws RemoteException {
        this.zzbVN.zzalE.setResult(status);
    }
}
