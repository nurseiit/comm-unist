package com.google.firebase.database.connection.idl;

import android.os.RemoteException;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.oi;

final class zzaf implements oh {
    private /* synthetic */ zzk zzcck;

    zzaf(zzk zzk) {
        this.zzcck = zzk;
    }

    public final void zza(boolean z, oi oiVar) {
        try {
            this.zzcck.zza(z, new zzag(this, oiVar));
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
