package com.google.firebase.appindexing.internal;

import android.os.RemoteException;

final class zzg extends zzk {
    private /* synthetic */ Thing[] zzbVL;

    zzg(zzf zzf, Thing[] thingArr) {
        this.zzbVL = thingArr;
        super();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzu zzu) throws RemoteException {
        zzu.zza(zzEC(), this.zzbVL);
    }
}
