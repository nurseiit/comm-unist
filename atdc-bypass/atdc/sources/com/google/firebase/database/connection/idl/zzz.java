package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.om;

final class zzz implements om {
    private /* synthetic */ zzq zzcce;

    zzz(IPersistentConnectionImpl iPersistentConnectionImpl, zzq zzq) {
        this.zzcce = zzq;
    }

    public final String zzFY() {
        try {
            return this.zzcce.zzFY();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean zzFZ() {
        try {
            return this.zzcce.zzFZ();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final oc zzGa() {
        try {
            return zza.zza(this.zzcce.zzGz());
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
