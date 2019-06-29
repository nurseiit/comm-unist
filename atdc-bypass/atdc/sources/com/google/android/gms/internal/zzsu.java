package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsu extends zzni {
    private /* synthetic */ zzsj zzKb;

    zzsu(zzsj zzsj) {
        this.zzKb = zzsj;
    }

    public final void zza(zzne zzne) throws RemoteException {
        this.zzKb.zztH.add(new zzsv(this, zzne));
    }
}
