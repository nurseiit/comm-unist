package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.oi;

final class zzae implements oi {
    private /* synthetic */ zzn zzccj;

    zzae(zzad zzad, zzn zzn) {
        this.zzccj = zzn;
    }

    public final void onError(String str) {
        try {
            this.zzccj.onError(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public final void zzgF(String str) {
        try {
            this.zzccj.zzgF(str);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
