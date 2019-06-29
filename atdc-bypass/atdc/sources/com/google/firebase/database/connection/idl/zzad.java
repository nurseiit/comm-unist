package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.oh;

final class zzad extends zzl {
    private /* synthetic */ oh zzcci;

    zzad(oh ohVar) {
        this.zzcci = ohVar;
    }

    public final void zza(boolean z, zzn zzn) throws RemoteException {
        this.zzcci.zza(z, new zzae(this, zzn));
    }
}
