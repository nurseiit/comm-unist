package com.google.firebase.appindexing.internal;

import android.os.RemoteException;

final class zzh extends zzk {
    private /* synthetic */ String[] zzbVM;

    zzh(zzf zzf, String[] strArr) {
        this.zzbVM = strArr;
        super();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzu zzu) throws RemoteException {
        zzu.zza(zzEC(), this.zzbVM);
    }
}
