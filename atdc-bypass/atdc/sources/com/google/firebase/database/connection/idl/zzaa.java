package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.pf;

final class zzaa implements pf {
    private /* synthetic */ zzah zzccf;

    zzaa(zzah zzah) {
        this.zzccf = zzah;
    }

    public final void zzaa(String str, String str2) {
        try {
            this.zzccf.zzaa(str, str2);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
