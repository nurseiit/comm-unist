package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.oi;

final class zzag extends zzo {
    private /* synthetic */ oi zzccl;

    zzag(zzaf zzaf, oi oiVar) {
        this.zzccl = oiVar;
    }

    public final void onError(String str) throws RemoteException {
        this.zzccl.onError(str);
    }

    public final void zzgF(String str) throws RemoteException {
        this.zzccl.zzgF(str);
    }
}
